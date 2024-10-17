import 'package:flutter/material.dart';

class SectionButtonModel {
  const SectionButtonModel({required this.title, required this.icon, this.route, this.hasSubSec = false});

  final String title;
  final IconData icon;
  final String? route;
  final bool hasSubSec;

  get hasRoute => route != null;
}