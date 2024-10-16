import 'package:flutter/material.dart';

import 'package:d360/theme/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);

    return Drawer(
      backgroundColor: colors['background'],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: colors['primary'],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: colors['textSecondary'],
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Jan Kowalski',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            color: colors['textPrimary']
                          ),
                        ),
                        Text(
                          'tester@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                              color: colors['textSecondary']
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
