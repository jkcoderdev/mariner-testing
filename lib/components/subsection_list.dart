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
  '/wydarzenia': <Widget>[
    SubsectionButton(icon: Icons.calendar_month, title: 'Kalendarz'),
    SubsectionButton(icon: Icons.mail, title: 'Wiadomości'),
    SubsectionButton(icon: Icons.info, title: 'Informacje')
  ],
};