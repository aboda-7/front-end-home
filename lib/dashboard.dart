import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/DevicesPage.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';


import 'main.dart';
import 'roomlist.dart';



class dashboard extends StatelessWidget {

  final int passedid;

  dashboard({required this.passedid});

  bool isSwitched=false;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: appdrawer(),
      backgroundColor: Colors.white,
      body:
        Column(
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
                    padding: EdgeInsets.only(left: 25,top: 75,right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                            Text("Hello, Bahaa", style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                _createRoute(profile())
                              );
                            },
                              child: Image(image: AssetImage('assets/pfp.png'),height: 40,width: 40,)
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 210),
                    child: Text("Live life to the fullest.", style: TextStyle(
                      fontFamily: "ProductSans",
                      color: Colors.white,
                    ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right : 310, top: 75),
                    child: Text("Rooms",style: TextStyle(
                        fontFamily: "ProductSans",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 100,
                  //   width: 390,
                  //   child : ListView.builder(
                  //        scrollDirection: Axis.horizontal,
                  //        itemCount: 3,
                  //        itemBuilder: (context,index){
                  //          return GestureDetector(
                  //            child: AnimatedContainer(
                  //                 duration: Duration(milliseconds: 500),
                  //                 height: 100,
                  //                 width: 100,
                  //                 decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(50)
                  //               ),
                  //           ),
                  //         );
                  //       }
                  //   ),
                  // ),
                  roomlist(),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      _createRoute(Devicespage())
                  );
                },
                child: Text("Master Button", style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20,
                  color: Colors.blue
                ),
                ),
              ),
            ),
              room(roomid: passedid),
          ],
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