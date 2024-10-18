import 'package:flutter/material.dart';

class LockersPage extends StatelessWidget {
  static const String id = '/marina/lockers';

  const LockersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Szafki'),),
    );
  }
}
