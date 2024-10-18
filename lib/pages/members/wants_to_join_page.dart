import 'package:flutter/material.dart';
import 'package:mariner/components/members_components/user_wants_to_join.dart';

class WantsToJoinPage extends StatelessWidget {
  static const String id = '/members/wants_to_join';

  const WantsToJoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prośby o dołącznie') ,),
      body: const Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            SizedBox(height: 20.0,),
            User(name: 'ra8nek', email: '+48 333 33 333',)
          ],
        ),
      ),
    );
  }
}
