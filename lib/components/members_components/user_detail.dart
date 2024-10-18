import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({super.key, required this.name, this.pesel = '* Nie podano *', this.email = '* Nie podano *', this.phone = '* Nie podano *'});

  final String name;
  final String pesel;
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(name),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('PESEL: $pesel'),
              Text('Email: $email'),
              Text('nr tel: $phone'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Zamknij'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ]);
  }
}
