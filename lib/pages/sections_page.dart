import 'package:d360/components/section_button.dart';
import 'package:flutter/material.dart';
import 'package:d360/models/section_button_model.dart';
import 'package:d360/theme/colors.dart';
import 'package:d360/components/section_list.dart';
import 'dart:convert';

class SectionsPage extends StatelessWidget {
  static const String id = '/sekcje';

  final String route;

  const SectionsPage({required this.route,super.key});


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

    final List? testbtn = kSubsections[route]?.toList();

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
              itemCount: testbtn?.length,
              itemBuilder: (context, index){
                final button = testbtn?[index];

                return Column(
                  children: [
                    TextButton(onPressed: (){
                      var test =  kSubsections['/administracja']?.toList(growable: true);
                      print( test?[1] );
                    },

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
