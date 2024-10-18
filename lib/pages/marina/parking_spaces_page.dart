import 'package:flutter/material.dart';

class ParkingSpacesPage extends StatelessWidget {
  static const String id = '/marina';

  const ParkingSpacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Miejsca postojowe'),),
      body: const Center(child: Text('Miejsca postojowe'),),
    );
  }
}
