import 'package:flutter/material.dart';

import 'package:mariner/theme/colors.dart';

import 'package:mariner/components/dashboard_components/section_button.dart';
import 'package:mariner/components/subsections_components/subsection_button.dart';
import 'package:mariner/components/subsections_components/subsection_list.dart';

import 'package:mariner/models/section_button_model.dart';

class SectionsPage extends StatelessWidget {
  static const String id = '/sekcje';

  const SectionsPage({required this.route,super.key});

  final String route;

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);
    final List buttons = kSubsections[route]?.toList() ?? const [SectionButton(icon: Icons.close, title: 'Brak podsekcji')];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          route.substring(1).toUpperCase(),
          style: TextStyle(
            color: colors['textPrimary'],
            fontWeight: FontWeight.w700
          )
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: ListView.builder(
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            final button = buttons[index];

            return Column(
              children: [
                SubsectionButton(title: button.title, icon: button.icon, route: button.route),
                Divider(color: colors['special'],)
              ],
            );
          }
        )
      )
    );
  }
}

// ListView.builder(
//   itemBuilder: (context, index) {
//     final button = buttons[index];
//
//     return Row(
//       children: <Widget>[
//         Icon(button.icon),
//         Text(button.title)
//       ]
//     );
//   }
// )
