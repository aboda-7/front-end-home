import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';


import 'main.dart';
import 'roomlist.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                padding: EdgeInsets.only(top: 75, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, _createRoute(profile()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF7F7F7),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Image(
                      image: AssetImage('assets/pfp.png'),
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      "Bahaa",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Owner",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: 375,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Text(
                              "Account",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "ProductSans",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "ProductSans",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Initials",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "ProductSans",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 100),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Username',
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "ProductSans",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Email',
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Phone Number",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "ProductSans",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Phone Number',
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Birthday",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "ProductSans",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Birthday',
                                prefixIcon: const Icon(
                                  Icons.calendar_today,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          Container(
                            // height: 214,
                            width: 375,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: Text(
                                    "Security",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "ProductSans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40,),
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
                                SizedBox(height: 40,),
                              ],
                            ),
                          ),
                          Container(
                            // height: 214,
                            width: 375,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: Text(
                                    "Privacy",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "ProductSans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40,),
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
                                SizedBox(height: 40,),
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
        ),
      ),
    );
  }
}


Route _createRoute(Widget hello) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => hello,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOutSine;
      var begin = Offset(-1.0, 0.0);
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

