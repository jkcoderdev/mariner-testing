import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/main_page.dart';
import 'pages/login_page.dart';
import 'pages/administracja/administracja_page.dart';
import 'pages/organizacja/organizacja_page.dart';
import 'pages/kadry/kadry_page.dart';
import 'theme/theme.dart';
import 'pages/sections_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const MainPage(),
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
        SectionsPage.id: (context) => const SectionsPage(),
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

