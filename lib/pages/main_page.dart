import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:d360/models/section_button_model.dart';
import 'package:d360/components/section_button.dart';

class BtnModel {
  final String title;
  final IconData icon;

  BtnModel({required this.title, required this.icon});
}

class MainPage extends StatelessWidget {
  static const String id = '/main';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<SectionButtonModel> buttons = [
      SectionButtonModel(
        title: 'Administracja',
        icon: Icons.person,
        route: '/administracja'
      ),
      SectionButtonModel(
        title: 'Organizacja',
        icon: Icons.pending_actions,
        route: '/organizacja'
      ),
      SectionButtonModel(
        title: 'Kadry',
        icon: Icons.people,
        route: '/kadry'
      ),
      SectionButtonModel(
        title: 'Automatyzacja',
        icon: Icons.timelapse_outlined
      ),
      SectionButtonModel(
        title: 'Członkowie',
        icon: Icons.people
      ),
      SectionButtonModel(
        title: 'Składki',
        icon: Icons.monetization_on
      ),
      SectionButtonModel(
        title: 'Uprawnienia żeglarskie',
        icon: Icons.note_add
      ),
      SectionButtonModel(
        title: 'Marina',
        icon: Icons.waves
      ),
      SectionButtonModel(
        title: 'Statusy',
        icon: Icons.star
      ),
      SectionButtonModel(
        title: 'Ustawienia',
        icon: Icons.settings
      ),
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
                itemCount: buttons.length,
                itemBuilder: (context, index) {
                  final button = buttons[index];

                  return SectionButton(
                    title: button.title,
                    icon: button.icon,
                    onPressed: () {
                      if (button.hasRoute) {
                        Navigator.pushNamed(context, button.route!);
                      }
                    },
                  );

                  // return ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40.0),
                  //       )),
                  //   onPressed: () {
                  //     if (button.hasRoute) {
                  //       Navigator.pushNamed(context, button.route!);
                  //     }
                  //   },
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: <Widget>[
                  //       Icon(button.icon),
                  //       Text(button.title),
                  //     ],
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
