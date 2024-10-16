import 'package:flutter/material.dart';

class SectionButtonModel {
  const SectionButtonModel({required this.title, required this.icon, this.route});

  final String title;
  final IconData icon;
  final String? route;

  get hasRoute => route != null;
}