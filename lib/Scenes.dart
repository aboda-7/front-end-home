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

class Scenes extends StatelessWidget {
  const Scenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF2B3786),
                Color(0xFF5C65A1),
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
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "How's your\nmood",
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/pfp.png'),
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 200,
                  child: Padding(
                      padding: EdgeInsets.only(left: 25,right: 25, top: 50),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                      Color(0xFF81CEFF),
                                      Color(0xFF26A9E1)
                                  ]
                              ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left : 15 , top: 15),
                                      child: Text("6th Of October",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text("22°",style: TextStyle(
                                        fontSize: 36,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                 Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right : 0 , top: 15),
                                        child: Icon(Icons.sunny,color: Colors.yellow,),
                                      ),
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: EdgeInsets.only(right : 15),
                                        child: Text("            Sunny\nH: 23°  L: 10°",style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                 ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 25,),
                                Icon(Icons.sunny,color: Colors.yellow,),
                                SizedBox(width: 25,),
                                Icon(Icons.sunny,color: Colors.yellow,),
                                SizedBox(width: 25,),
                                Icon(Icons.sunny,color: Colors.yellow,),
                                SizedBox(width: 25,),
                                Icon(Icons.sunny,color: Colors.yellow,),
                                SizedBox(width: 25,),
                                Icon(Icons.nights_stay,color: Color(0xFF5B6BF5),),
                                SizedBox(width: 25,),
                                Icon(Icons.nights_stay,color: Color(0xFF5B6BF5),),
                                SizedBox(width: 25,),
                                Icon(Icons.nights_stay,color: Color(0xFF5B6BF5),),
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
              ),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text("Master Button", style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 20,
                            color: Colors.blue
                          ),
                        ),
                      ),
                    // Grid of Containers with resized sizes
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.5,
                        ),
                        itemCount: 20, // Number of containers in the grid
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Container(
                              width: 120,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F6FF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top : 35,left: 5),
                                        child: Icon(Icons.sunny,color: Colors.yellow,size: 50,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Text("Good\nMorning",style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Icon(Icons.play_arrow),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
