import 'package:flutter/material.dart';
import 'section_button.dart';

const Map < String, List > kSubsections = {
  '/administracja': <Widget>[
    SectionButton(icon: Icons.groups, title: 'Użytkownicy'),
    SectionButton(icon: Icons.mail, title: 'Zaproszenia'),
    SectionButton(icon: Icons.add_card_rounded, title: 'Uprawnienia'),
    SectionButton(icon: Icons.perm_contact_calendar_rounded, title: 'Role'),
  ],
  '/skladki': <Widget>[
    SectionButton(icon: Icons.access_time_filled_sharp, title: 'Zyćko'),
    SectionButton(icon: Icons.account_balance_wallet, title: 'Unżyćko')
  ],
};