import 'package:flutter/material.dart';

import 'package:mariner/theme/colors.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);

    return RawMaterialButton(
      fillColor: colors['primary'],
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      constraints: const BoxConstraints.tightFor(
        height: 48.0,
        width: double.infinity
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: colors['textPrimary'],
            fontSize: 16.0,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
