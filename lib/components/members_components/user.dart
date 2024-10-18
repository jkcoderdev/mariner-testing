import 'package:flutter/material.dart';
import 'user_detail.dart';

class User extends StatelessWidget {
  const User({super.key, required this.name});

  final String name;


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
            UserDetail(name: name, pesel: '02223344', email: 'ra4nek@gmail.com', phone: '+48 333 33 333',));
          }, icon: const Icon(Icons.more_horiz) ),
      
          IconButton(onPressed: (){
            print('delete user: ' + name);
          }, icon: const Icon(Icons.delete) )
        ],
      ),
    );
  }
}
