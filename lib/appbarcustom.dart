import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                    Icons.menu, size: 45, color: Colors.black),
              );
            },
          ),
          const Image(
            image: AssetImage('assets/logo2.png'),
            height: 90,
            width: 90,
          ),
        ],
      ),
    );
  }
}


