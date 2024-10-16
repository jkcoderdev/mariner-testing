import 'package:flutter/material.dart';
import 'package:d360/models/section_button_model.dart';
import 'section_button.dart';

const Map < String, List > kSubsections = {
  '/administracja': <Widget>[
    SectionButton(icon: Icons.accessibility, title: 'Witold'),
    SectionButton(icon: Icons.abc_sharp, title: 'Warta')
  ],
  '/kadry': <Widget>[
    SectionButton(icon: Icons.access_time_filled_sharp, title: 'Zyćko'),
    SectionButton(icon: Icons.account_balance_wallet, title: 'Unżyćko')
  ]
};