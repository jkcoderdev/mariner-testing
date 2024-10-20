import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'package:mariner/theme/colors.dart';

import 'package:mariner/components/form_button.dart';
import 'package:mariner/components/form_input.dart';

class LoginPage extends StatefulWidget {
  static const String id = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage>  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController(text: "admin@acme.example");
  final TextEditingController passwordController = TextEditingController(text: "test12");

  Future<void> checkCredentials(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;
    final response = await http.post(

      Uri.parse('https://acme-dev.d360.pl/api/v1/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('loggedIn', true);
      prefs.setString("access_token", response.body);

      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/main');
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Błędna nazwa użytkownika lub hasło')),
        );
      }
    }
  }

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
              FormInput(
                controller: emailController,
                placeholder: 'E-mail',
              ),
              const SizedBox(height: 8),
              FormInput(
                controller: passwordController,
                placeholder: 'Hasło',
                obscureText: true,
              ),
              const SizedBox(height: 16),
              FormButton(
                onPressed: () async {
                  await checkCredentials(context);
                },
                text: 'Zaloguj się',
              ),
              const SizedBox(height: 32.0),
              // Bypass button
              TextButton(
                onPressed: () async {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                child: const Text('Pomiń logowanie'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
