import 'package:flutter/material.dart';

class WantsToJoinPage extends StatelessWidget {
  static const String id = '/members/wants_to_join';

  const WantsToJoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prośby o dołącznie') ,),
      body: const Column(),
    );
  }
}
