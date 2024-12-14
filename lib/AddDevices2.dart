import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/AddDevices.dart';
import 'package:yarab/Changepassword.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';


import 'dashboard.dart';
import 'main.dart';
import 'roomlist.dart';

class Adddevices2 extends StatelessWidget {
  const Adddevices2({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 50,left: 20,right: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Icon(Icons.arrow_back,color: Colors.white,size: 40,),
                        onTap: (){
                          Navigator.push(context,
                              _createRoute(AddDevices()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Add a New Device", style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Choose a device to add to your BE Network", style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Colors.white,
                      fontSize: 12
                  ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: MediaQuery.of(context).size.height-184,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(75))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50,top: 30),
                        child: Text("Device Name",style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF27A8E0),
                                ),
                              ),
                              hintText: 'Enter device name',
                              prefixIcon: const Icon(Icons.tag, color: Colors.black,)
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          height: 184,
                          width: 361,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30,top: 15),
                                child: Text("Location",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: roomlist(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 184,
                          width: 361,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30,top: 15),
                                child: Text("Device Type",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: roomlist(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context, _createRoute(dashboard(passedid: 1))
                          );
                        },
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Color(0xFF27A8E0),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text("Add Device",style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'ProductSans',
                                  fontSize: 17
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
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
