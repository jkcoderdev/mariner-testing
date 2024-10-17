import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.person),
        const SizedBox(width: 10.0),
        Text(name),

        const Expanded(child: SizedBox()),
        IconButton(onPressed: (){
          print('edit user: ' + name);
        }, icon: const Icon(Icons.edit) ),

        IconButton(onPressed: (){
          print('delete user: ' + name);
        }, icon: const Icon(Icons.delete) )
      ],
    );
  }
}
