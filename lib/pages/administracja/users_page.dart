import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {

  static const String id = '/administracja/uzytkownicy';

  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Użytkownicy') ,),
      body: Column(
        children: [Text('Stronka WOOOOOOOOOOOOOOOOOOO')],
      ),
    );
  }
}
