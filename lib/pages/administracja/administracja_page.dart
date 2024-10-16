import 'package:flutter/material.dart';

class AdministracjaPage extends StatelessWidget {
  static const String id = '/administracja';

  const AdministracjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Administracja')),
      body: const Center(
        child: Text('Strona Administracji'),
      ),
    );
  }
}
