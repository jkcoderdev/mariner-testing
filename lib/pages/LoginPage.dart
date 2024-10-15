import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nazwa użytkownika',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Hasło',
                ),
                obscureText: true, 
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('loggedIn', true); // Ustawienie zalogowania
                  Navigator.pushReplacementNamed(context, '/main');
                },
                child: const Text('Zaloguj się'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
