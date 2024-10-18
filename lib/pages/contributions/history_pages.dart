import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  static const String id = '/contributions/history';
  
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Historia składek'),),
    );
  }
}
