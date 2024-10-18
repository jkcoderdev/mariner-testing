import 'package:flutter/material.dart';

class StatusesPage extends StatelessWidget {
  static const String id = '/members/statuses';
  
  const StatusesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Statusy'),),
    );
  }
}
