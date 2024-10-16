import 'package:flutter/material.dart';
import 'package:d360/models/section_button_model.dart';

class SectionsPage extends StatelessWidget {
  static const String id = '/sekcje';

  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [Text('data')],))
    );
  }
}
