import 'package:flutter/material.dart';

class DictionaryPage extends StatelessWidget {
  static const String id = '/contributions/dictionary';
  
  const DictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Słownik opłat'),),
    );
  }
}
