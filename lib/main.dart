import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/main_page.dart';
import 'pages/login_page.dart';
import 'pages/administracja/administracja_page.dart';
import 'pages/organizacja/organizacja_page.dart';
import 'pages/kadry/kadry_page.dart';
import 'theme/theme.dart';
import 'package:http/http.dart' as http;
import 'pages/sections_page.dart';
import 'dart:io';
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
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        AdministracjaPage.id: (context) => const AdministracjaPage(),
        OrganizacjaPage.id: (context) => const OrganizacjaPage(),
        KadryPage.id: (context) => const KadryPage(),
        SectionsPage.id: (context) => SectionsPage(route: ModalRoute.of(context)!.settings.arguments as String),

      },

      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('loggedIn') ?? false;
  }
}

