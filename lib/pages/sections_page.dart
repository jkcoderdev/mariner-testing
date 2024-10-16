import 'package:flutter/material.dart';
import 'package:d360/models/section_button_model.dart';
import 'package:d360/theme/colors.dart';

class SectionsPage extends StatelessWidget {
  static const String id = '/sekcje';

  const SectionsPage({super.key});


  @override
  Widget build(BuildContext context) {

    final colors = ThemeColors.of(context);

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
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(
          'MARINER',
          style: TextStyle(
          color: colors['textPrimary'],
          fontWeight: FontWeight.w700
        ))),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: ListView.builder(
              itemCount: buttons.length,
              itemBuilder: (context, index){
                final button = buttons[index];

                return Column(
                  children: [
                    TextButton(onPressed: (){},

                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll( colors['background'] ),
                        ),

                        child: Row(
                          children: [
                            Icon(button.icon, color: colors['textPrimary'],),
                            const SizedBox(width: 20.0,) ,
                            Text(button.title,
                              style: TextStyle(color: colors['textPrimary']),
                            )
                          ],
                        )
                    ),
                    Divider(color: colors['special'],)
                  ],
                );

              }
          )
        )
    );
  }
}
//
// ListView.builder(
// itemBuilder: (context, index){
// final button = buttons[index];
//
// return Row(children: [
// Icon(button.icon), Text(button.title)
// ],);
//
// }
// )
