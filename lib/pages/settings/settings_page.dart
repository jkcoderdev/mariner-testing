import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const String id = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ustawienia')
      ),
      body: const Center(child: Text('Ustawienia')),
    );
  }
}
