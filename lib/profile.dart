import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';
import 'package:yarab/settings.dart';


import 'DevicesPage.dart';
import 'Scenes.dart';
import 'dashboard.dart';
import 'main.dart';
import 'roomlist.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int myIndex = 3;

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
      body:SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:  <Color>[
                    Color(0xFFD0CD37),
                    Color(0xFF27A8E0),
                  ],
                )
            ),
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 75,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Text("Settings",style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: MediaQuery.of(context).size.height-141 ,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFF7F7F7),
                  child: Column(
                    children: [
                      SizedBox(height: 35,),
                      Center(
                        child: GestureDetector(
                            child: Image(image: AssetImage('assets/pfp.png'),height: 100,width: 100,),
                            onTap: (){
                            Navigator.push(
                                context,
                                _createRoute(Settings())
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Text("Bahaa Rayah",style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 214,
                        width: 375,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:10,left:15),
                              child: Text("Account Settings", style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Divider(),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Divider(),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 60,),
                      Container(
                        height: 214,
                        width: 375,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:10,left:15),
                              child: Text("Account Settings", style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Divider(),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Divider(),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:  EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 30,),
                                  Text("Edit Profile",style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
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
