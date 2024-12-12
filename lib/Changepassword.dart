import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';
import 'package:yarab/settings.dart';


import 'dashboard.dart';
import 'main.dart';
import 'roomlist.dart';

class changepass extends StatelessWidget {
  const changepass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 75,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, _createRoute(Settings()));
                          },
                          child: Icon(Icons.arrow_back,color: Colors.white,size: 40,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: MediaQuery.of(context).size.height-140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(75))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35,),
                      Center(
                        child: Text("  Change\nPassword",style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text("Current Password",style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15
                        ),),
                      ),
                      Center(
                        child : Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Username',
                                prefixIcon: const Icon(Icons.person, color: Colors.black,)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text("New Password",style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15
                        ),),
                      ),
                      Center(
                        child : Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Username',
                                prefixIcon: const Icon(Icons.person, color: Colors.black,)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text("Repeat New Password",style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15
                        ),),
                      ),
                      Center(
                        child : Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: Color(0xFF27A8E0),
                                  ),
                                ),
                                hintText: 'Username',
                                prefixIcon: const Icon(Icons.person, color: Colors.black,)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                _createRoute2(dashboard(passedid: 1))
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color(0xFF27A8E0),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text("Continue",style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            ),
                          ),
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

Route _createRoute2(Widget hello) {
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
