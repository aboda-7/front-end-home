import 'package:flutter/material.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';

import 'dashboard.dart';
import 'main.dart';



class appdrawer extends StatelessWidget {
  const appdrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Scan New Devices'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const scan()),
              );
            },
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dashboard(passedid: 1,)),
              );
            },
          ),
          ListTile(
            // title: const Text(
            //   'Log Out', style: TextStyle(color: Colors.red),),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     // MaterialPageRoute(builder: (context) => const Login()),
            //   );
            // },
          ),
        ],
      ),
    );
  }
}
