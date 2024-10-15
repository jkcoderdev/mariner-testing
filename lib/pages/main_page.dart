import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String id = 'main';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista nazw przycisków
    final List<String> buttonLabels = [
      'Administracja',
      'Organizacja',
      'Kadry',
      'Automatyzacja',
      'Członkowie',
      'Składki',
      'Uprawnienia żeglarskie',
      'Marina',
      'Statusy',
      'Ustawienia',
    ];

    return Scaffold(
      // Ustawienie białego tła
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Nagłówek
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 0.0, right: 16.0, top: 40.0),
            child: Text(
              'D360',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: buttonLabels.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )),
                    onPressed: () {
                      // Obsługa kliknięcia przycisku
                      print('${buttonLabels[index]} clicked');
                    },
                    child: Text(buttonLabels[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}