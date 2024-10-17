import 'package:mariner/components/section_button.dart';
import 'package:flutter/material.dart';
import 'package:mariner/models/section_button_model.dart';
import 'package:mariner/theme/colors.dart';
import 'package:mariner/components/section_list.dart';

class SectionsPage extends StatelessWidget {
  static const String id = '/sekcje';

  final String route;

  const SectionsPage({required this.route,super.key});


  @override
  Widget build(BuildContext context) {

    final colors = ThemeColors.of(context);

    final List? buttons = kSubsections[route]?.toList() ?? const [SectionButton(icon: Icons.close, title: 'Brak podsekcji')] ;

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
              itemCount: buttons?.length,
              itemBuilder: (context, index){
                final button = buttons?[index];

                return Column(
                  children: [
                    TextButton(onPressed: (){

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
