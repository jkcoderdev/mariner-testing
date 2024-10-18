import 'package:flutter/material.dart';

class SailorPermissionsTypesPage extends StatelessWidget {
  static const String id = '/sailor_permissions/types';
  
  const SailorPermissionsTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rodzaje patentów'),),
    );
  }
}
