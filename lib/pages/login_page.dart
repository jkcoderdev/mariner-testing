import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:d360/theme/colors.dart';

import 'package:d360/components/form_button.dart';
import 'package:d360/components/form_input.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/login'; 

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors.of(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MARINER',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: colors['textPrimary']
                ),
              ),
              Text(
                'Some subtitle text',
                style: TextStyle(
                  fontSize: 12,
                  color: colors['textSecondary']
                )
              ),
              const SizedBox(height: 32.0),
              const FormInput(
                placeholder: 'Nazwa użytkownika',
              ),
              const SizedBox(height: 8.0),
              const FormInput(
                placeholder: 'Hasło',
                obscureText: true, 
              ),
              const SizedBox(height: 16.0),
              FormButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('loggedIn', true); // Ustawienie zalogowania
                  Navigator.pushReplacementNamed(context, '/main');
                },
                text: 'Zaloguj się'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
