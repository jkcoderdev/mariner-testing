import 'package:flutter/material.dart';

import 'package:d360/theme/colors.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({super.key, required this.icon, required this.title, this.onPressed});

  final IconData icon;
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);

    return RawMaterialButton(
      fillColor: colors['secondary'],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40.0))
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Text(title)
        ],
      ),
    );
  }
}
