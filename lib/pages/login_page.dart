import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:d360/components/form_button.dart';
import 'package:d360/components/form_input.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/login'; 

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logowanie'), 
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Proszę się zalogować',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const FormInput(
                placeholder: 'Nazwa użytkownika',
              ),
              const SizedBox(height: 10),
              const FormInput(
                placeholder: 'Hasło',
                obscureText: true, 
              ),
              const SizedBox(height: 20),
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
