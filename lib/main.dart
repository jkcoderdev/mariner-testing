import 'package:flutter/material.dart';
import 'pages/MainPage.dart';
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
      initialRoute: MainPage.id,
      routes: {
        MainPage.id: (context) => const MainPage(),
        AdministracjaPage.id: (context) => const AdministracjaPage(),
        OrganizacjaPage.id: (context) => const OrganizacjaPage(),
        KadryPage.id: (context) => const KadryPage(),
        // Dodaj inne trasy tutaj
      },
    );
  }
}
