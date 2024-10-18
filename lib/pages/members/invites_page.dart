import 'package:flutter/material.dart';

class InvitesPage extends StatelessWidget {
  static const String id = '/members/invites';

  const InvitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zaproszenia'),),
    );
  }
}
