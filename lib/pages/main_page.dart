import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:d360/theme/colors.dart';

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

    final colors = ThemeColors.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MARINER',
          style: TextStyle(
            color: colors['textPrimary'],
            fontWeight: FontWeight.w700
          )
        ),
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
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
          },
        ),
      ),
    );
  }
}
