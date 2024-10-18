import 'package:flutter/material.dart';
import 'subsection_button.dart';
import 'package:mariner/pages/members/users_page.dart';

const Map < String, List > kSubsections = {
  '/czlonkowie': <Widget>[
    SubsectionButton(icon: Icons.groups, title: 'Użytkownicy', route: UsersPage.id,),
    SubsectionButton(icon: Icons.mail, title: 'Zaproszenia'),
    SubsectionButton(icon: Icons.perm_contact_calendar_rounded, title: 'Role'),
    SubsectionButton(icon: Icons.start, title: 'Statusy',)
  ],
  '/skladki': <Widget>[
    SubsectionButton(title: 'Skladki', icon: Icons.monetization_on),
    SubsectionButton(title: 'Historia składek', icon: Icons.history),
    SubsectionButton(title: 'Slownik opłat', icon: Icons.pending_actions)
  ],
  '/uprawnienia_zeglarskie': <Widget>[
    SubsectionButton(title: 'Patenty', icon: Icons.badge),
    SubsectionButton(title: 'Rodzaje patentow', icon: Icons.document_scanner)
  ],
  '/marina': <Widget>[
    SubsectionButton(title: 'Miejsca postojowe', icon: Icons.anchor),
    SubsectionButton(title: 'Szafki', icon: Icons.lock_open)
  ]
};