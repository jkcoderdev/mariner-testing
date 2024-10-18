import 'package:flutter/material.dart';

class RolesPage extends StatelessWidget {
  static const String id = '/members/roles';

  const RolesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Role'),),
    );
  }
}
