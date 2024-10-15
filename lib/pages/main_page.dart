import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String id = 'main';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
