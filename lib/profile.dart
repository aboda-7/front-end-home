import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';


import 'main.dart';
import 'roomlist.dart';

class profile extends StatelessWidget {
  const profile({super.key});

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
    );
  }
}
