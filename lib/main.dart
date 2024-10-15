import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/MainPage.dart';
import 'pages/LoginPage.dart';
import 'pages/administracja/AdministracjaPage.dart';
import 'pages/organizacja/OrganizacjaPage.dart';
import 'pages/kadry/KadryPage.dart';

void main() {
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
      },
    );
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('loggedIn') ?? false;
  }
}

