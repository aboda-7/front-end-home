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

class Devicespage extends StatelessWidget {
  const Devicespage({super.key});

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
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Devices",
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
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Grid of Containers with resized sizes
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.5,
                        ),
                        itemCount: 4, // Number of containers in the grid
                        itemBuilder: (context, index) {
                          return Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F6FF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:15 ,top:15),
                                    child: Text(
                                      'Device ${index + 1}',
                                      style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),
                                   ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, top :25),
                                    child: Icon(Icons.lightbulb,size: 40,),
                                  )
                                ],
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
