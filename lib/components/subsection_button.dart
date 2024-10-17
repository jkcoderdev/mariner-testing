import 'package:flutter/material.dart';
import 'package:mariner/theme/colors.dart';

class SubsectionButton extends StatelessWidget {
  const SubsectionButton({super.key, required this.title, required this.icon, this.route});

  final IconData icon;
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);

    return RawMaterialButton(
      onPressed: (){
        if(route != null ) Navigator.pushNamed(context, route.toString() );
        print(route);
      },
      
      fillColor: colors['background'],

      elevation: 0.0,

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0))
      ),
      
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(children: [
          Icon(icon),
          const SizedBox(width: 20.0,),
          Text(title)
        ],),
      ),
    ) ;
  }
}
