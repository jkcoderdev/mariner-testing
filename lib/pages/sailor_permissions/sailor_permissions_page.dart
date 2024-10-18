import 'package:flutter/material.dart';

class SailorPermissionsPage extends StatelessWidget {
  static const String id = '/sailor_permissions/sailor_permissions';
  const SailorPermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Uprawnienia żeglarskie'),),
      body: const Center(child: Text('Uprawnienia żeglarskie'),),
    );
  }
}
