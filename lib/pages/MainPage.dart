import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
  static const String id = '/main';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        title: const Text('D360'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('loggedIn', false);
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Column(
        children: [
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
                      switch (buttonLabels[index]) {
                        case 'Administracja':
                          Navigator.pushNamed(context, '/administracja');
                          break;
                        case 'Organizacja':
                          Navigator.pushNamed(context, '/organizacja');
                          break;
                        case 'Kadry':
                          Navigator.pushNamed(context, '/kadry');
                          break;
                        case 'Automatyzacja':
                          break;
                        case 'Członkowie':
                          break;
                        case 'Składki':
                          break;
                        case 'Uprawnienia żeglarskie':
                          break;
                        case 'Marina':
                          break;
                        case 'Statusy':
                          break;
                        case 'Ustawienia':
                          break;
                      }
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
