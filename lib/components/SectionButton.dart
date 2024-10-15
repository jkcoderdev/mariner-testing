import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({super.key, required this.icon, required this.name, this.onPressed});

  final IconData icon;
  final String name;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RawMaterialButton(
      fillColor: theme.colorScheme.primary,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Text(name)
        ],
      ),
    );
  }
}
