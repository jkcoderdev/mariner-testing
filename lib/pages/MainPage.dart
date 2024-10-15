import 'package:flutter/material.dart';
import 'administracja/AdministracjaPage.dart';
import 'organizacja/OrganizacjaPage.dart';
import 'kadry/KadryPage.dart';
// import 'automatyzacja/AutomatyzacjaPage.dart';
// import 'czlonkowie/CzlonkowiePage.dart';
// import 'skladki/SkladkiPage.dart';
// import 'uprawnienia/UprawnieniaPage.dart';
// import 'marina/MarinaPage.dart';
// import 'statusy/StatusyPage.dart';
// import 'ustawienia/UstawieniaPage.dart';

class MainPage extends StatelessWidget {
  static const String id = '/main'; // Identyfikator trasy dla MainPage

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista przycisków z etykietami i trasami
    final List<Map<String, String>> buttons = [
      {'label': 'Administracja', 'route': AdministracjaPage.id},
      {'label': 'Organizacja', 'route': OrganizacjaPage.id},
      {'label': 'Kadry', 'route': KadryPage.id},
      {'label': 'Automatyzacja', 'route': ""},// AutomatyzacjaPage.id},
      {'label': 'Członkowie', 'route': ""},//CzlonkowiePage.id},
      {'label': 'Składki', 'route': ""},//SkladkiPage.id},
      {'label': 'Uprawnienia żeglarskie', 'route': ""},//UprawnieniaPage.id},
      {'label': 'Marina', 'route': ""},//MarinaPage.id},
      {'label': 'Statusy', 'route': ""},//StatusyPage.id},
      {'label': 'Ustawienia', 'route': ""}//UstawieniaPage.id},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('D360'), // Nagłówek aplikacji
        backgroundColor: Colors.blueGrey, // Kolor AppBaru
      ),
      backgroundColor: Colors.grey[200], // Kolor tła aplikacji
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Odstęp wokół siatki
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dwa przyciski w wierszu
            crossAxisSpacing: 10.0, // Odstęp w poziomie
            mainAxisSpacing: 10.0, // Odstęp w pionie
          ),
          itemCount: buttons.length, // Liczba przycisków
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, buttons[index]['route']!);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 16), // Styl tekstu
              ),
              child: Text(buttons[index]['label']!), // Etykieta przycisku
            );
          },
        ),
      ),
    );
  }
}
