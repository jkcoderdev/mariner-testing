import 'package:flutter/cupertino.dart';

class SideMenuTileModel {
  const SideMenuTileModel({required this.title, required this.icon, this.route});

  final String title;
  final IconData icon;
  final String? route;

  get hasRoute => route != null;
}