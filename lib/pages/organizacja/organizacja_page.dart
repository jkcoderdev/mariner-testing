import 'package:flutter/material.dart';

class OrganizacjaPage extends StatelessWidget {
  static const String id = '/organizacja';

  const OrganizacjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organizacja')),
      body: const Center(
        child: Text('Strona Organizacji'),
      ),
    );
  }
}
