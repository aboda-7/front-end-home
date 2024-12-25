import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/DevicesPage.dart';
import 'package:yarab/Scenes.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';

import 'main.dart';
import 'roomlist.dart';

class dashboard extends StatefulWidget {
  final int passedid;

  dashboard({required this.passedid});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  bool isSwitched = false;
  int myIndex = 0;

  // List of pages for the bottom navigation bar
  final List<Widget> _pages = [
    dashboard(passedid: 1),        // Page 1: Scenes
    Devicespage(),   // Page 2: Devices
    Scenes(),// Page 4: Scan
    profile(),       // Page 3: Profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Makes the body scrollable to avoid overflow
        child: Column(
          children: [
            Container(
              height: 381,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFFD0CD37),
                    Color(0xFF27A8E0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 75, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello, Bahaa",
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              _createRoute(profile()),
                            );
                          },
                          child: Image(
                            image: AssetImage('assets/pfp.png'),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 210),
                    child: Text(
                      "Live life to the fullest.",
                      style: TextStyle(
                        fontFamily: "ProductSans",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 310, top: 75),
                    child: Text(
                      "Rooms",
                      style: TextStyle(
                        fontFamily: "ProductSans",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  roomlist(),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    _createRoute(Devicespage()),
                  );
                },
                child: Text(
                  "Master Button",
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            room(roomid: widget.passedid),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {

          setState(() {
            myIndex = index;
          });

          // Navigate to the respective page when an index is tapped
          Navigator.pushReplacement(
            context,
            _createRoute(_pages[myIndex]),
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sunny),
            label: 'Scenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,   // Color for selected icon
        unselectedItemColor: Colors.grey, // Color for unselected icons
        backgroundColor: Colors.white,    // Background color of the bottom bar
        type: BottomNavigationBarType.fixed,  // Allows fixed icons even with large labels
      ),
    );
  }
}

Route _createRoute(Widget hello) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => hello,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOutSine;

      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
