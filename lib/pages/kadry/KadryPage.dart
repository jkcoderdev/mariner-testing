import 'package:flutter/material.dart';

class KadryPage extends StatelessWidget {
  static const String id = '/kadry'; // Identyfikator trasy

  const KadryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kadry')),
      body: const Center(
        child: Text('Strona Kadr'),
      ),
    );
  }
}
