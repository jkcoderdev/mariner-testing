import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mariner/theme/colors.dart';

import 'package:mariner/models/section_button_model.dart';

import 'package:mariner/components/section_button.dart';
import 'package:mariner/components/side_menu.dart';
import 'package:mariner/pages/sections_page.dart';

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
        route: '/administracja',
        hasSubSec: true
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
        icon: Icons.build,
        // route: '/sekcje',
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
            icon: Icon(
              Icons.logout,
              color: colors['textPrimary'],
            ),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('loggedIn', false);
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      drawer: const SideMenu(),
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
                if(button.hasSubSec && button.hasRoute){
                    Navigator.pushNamed(context, SectionsPage.id, arguments: button.route);
                } else if(!button.hasSubSec && button.hasRoute){
                  Navigator.pushNamed(context, button.route.toString() );
                }

              },
            );
          },
        ),
      ),
    );
  }
}
