import 'package:flutter/material.dart';

class ContributionsPage extends StatelessWidget {
  static const id = '/contributions';
  const ContributionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Składki'),),
      body: const Center(child: Text('Składki'),),
    );
  }
}
