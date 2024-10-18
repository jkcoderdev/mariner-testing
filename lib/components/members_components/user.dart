import 'package:flutter/material.dart';
import 'user_detail.dart';

class User extends StatelessWidget {
  const User({super.key, required this.name, this.pesel = '* Nie podano *', this.email = '* Nie podano *', this.phone = '* Nie podano *'});

  final String name;
  final String pesel;
  final String email;
  final String phone;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Row(
        children: [
          Icon(Icons.person),
          const SizedBox(width: 10.0),
          Text(name),
      
          const Expanded(child: SizedBox()),
          IconButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context) =>
            UserDetail(name: name, pesel: pesel, email: email, phone: phone,));
          }, icon: const Icon(Icons.more_horiz) ),
      
          IconButton(onPressed: (){
            print('delete user: ' + name);
          }, icon: const Icon(Icons.delete) )
        ],
      ),
    );
  }
}
