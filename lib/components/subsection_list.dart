import 'package:flutter/material.dart';
import 'subsection_button.dart';
import 'package:mariner/pages/administracja/users_page.dart';

const Map < String, List > kSubsections = {
  '/administracja': <Widget>[
    SubsectionButton(icon: Icons.groups, title: 'Użytkownicy', route: UsersPage.id,),
    SubsectionButton(icon: Icons.mail, title: 'Zaproszenia'),
    SubsectionButton(icon: Icons.add_card_rounded, title: 'Uprawnienia'),
    SubsectionButton(icon: Icons.perm_contact_calendar_rounded, title: 'Role'),
  ],
  '/skladki': <Widget>[
    SubsectionButton(icon: Icons.access_time_filled_sharp, title: 'Zyćko'),
    SubsectionButton(icon: Icons.account_balance_wallet, title: 'Unżyćko')
  ],
};