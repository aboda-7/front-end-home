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
                          Image(image: AssetImage('assets/pfp.png'),height: 40,width: 40,),
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
              child: Text("Master Button", style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20,
                color: Colors.blue
              ),
              ),
            ),
              room(roomid: passedid),
          ],
        ),
    );
  }
}

// return Scaffold(
// drawer: const appdrawer(),
// backgroundColor: Colors.white,
// body:
// SafeArea(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [ Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const appbar(),
// const SizedBox(height: 20),
// const Padding (
// padding: EdgeInsets.symmetric(horizontal: 40),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Welcome Home,',
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.w900,
// ),),
// Text('Username',
// style: TextStyle(
// fontSize: 70,
// fontWeight: FontWeight.w900,
// ),
// ),
// ],
// ),
// ),
//
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 30.0),
// child: Divider(
// color: Colors.grey[700],
// thickness: 1,
// ),
// ),
// const SizedBox(height: 10),
//
// ],
// ),
// Column(
// children: [
// const Padding(
// padding: EdgeInsets.only(left: 10,right: 10),
// child: roomlist(),
// ),
// SizedBox(height: 10,),
// Padding(
// padding: const EdgeInsets.only(left: 10,right: 10),
// child: room(roomid: passedid),
// )
// ]
// ),
// ],
// ),
// ),
// );