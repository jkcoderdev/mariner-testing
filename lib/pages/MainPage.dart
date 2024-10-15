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
  static const String id = '/main'; 

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
        title: const Text('D360'), 
        backgroundColor: Colors.blueGrey, 
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, buttons[index]['route']!);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 16), 
              ),
              child: Text(buttons[index]['label']!),
            );
          },
        ),
      ),
    );
  }
}
