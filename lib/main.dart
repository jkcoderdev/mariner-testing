import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/main_page.dart';
import 'pages/login_page.dart';
import 'theme/theme.dart';
import 'package:http/http.dart' as http;
import 'pages/subsections_page.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'pages/members/users_page.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
void main() {

  HttpOverrides.global = MyHttpOverrides();
  runApp(MultiProvider( // create the provider
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeDataProvider(),
      )
    ],
    child: const MainApp(),
  ),);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override



  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Mariner',
      home: FutureBuilder<bool>(

        future: isLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Błąd podczas sprawdzania logowania.'));
          } else {
            
            return snapshot.data! ? const MainPage() : const LoginPage();
          }
        },
      ),
      routes: {
        MainPage.id: (context) => const MainPage(),
        LoginPage.id: (context) => const LoginPage(),
        SectionsPage.id: (context) => SectionsPage(route: ModalRoute.of(context)!.settings.arguments as String),

        // Admin module routes
        UsersPage.id: (context) => const UsersPage(),

      },

      theme: Provider.of<ThemeDataProvider>(context).getThemeData(),
      darkTheme: Provider.of<ThemeDataProvider>(context).getThemeData(reverse: true),

    );
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('loggedIn') ?? false;
  }
}

