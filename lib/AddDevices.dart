import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yarab/Changepassword.dart';
import 'package:yarab/appbarcustom.dart';
import 'package:yarab/appdrawer.dart';
import 'package:yarab/profile.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';
import 'package:yarab/scan.dart';
import 'package:slider_button/slider_button.dart';


import 'main.dart';
import 'roomlist.dart';

class AddDevices extends StatelessWidget {
  const AddDevices({super.key});

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
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:50),
                        child: Container(
                          height: 250,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Padding(
                                  padding: EdgeInsets.only(top:15,left: 15),
                                  child: Text("Available Devices"),
                                ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:15,left: 15),
                                child: Row(
                                  children: [
                                    Icon(Icons.devices),
                                    SizedBox(width: 20,),
                                    Text("Device"),
                                    SizedBox(width: 200,),
                                    GestureDetector(
                                        onTap: (){
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context){
                                                return Container(
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF7F7F7),
                                                    borderRadius: BorderRadius.circular(25),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(height: 25,),
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 15),
                                                        child: Text("Device Information",style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: 'ProductSans',
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40,),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 15),
                                                        child: Container(
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(15)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Number of output devices (e.g., light bulbs) connected to this switch",style: TextStyle(
                                                                fontSize: 10,
                                                                color:Color(0xFF737373),
                                                              ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.only(right: 20),
                                                                child: Text("3",style: TextStyle(
                                                                  fontSize: 14,
                                                                  color:Colors.black,
                                                                ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                          );
                                        },
                                        child: Icon(Icons.info_outline)
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:15,left: 15),
                                child: Row(
                                  children: [
                                    Icon(Icons.devices),
                                    SizedBox(width: 20,),
                                    Text("Device"),
                                    SizedBox(width: 200,),
                                    GestureDetector(
                                        onTap: (){
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context){
                                                return Container(
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF7F7F7),
                                                    borderRadius: BorderRadius.circular(25),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(height: 25,),
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 15),
                                                        child: Text("Device Information",style: TextStyle(
                                                            fontSize: 17,
                                                            fontFamily: 'ProductSans',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40,),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 15),
                                                          child: Container(
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(15)
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text("Number of output devices (e.g., light bulbs) connected to this switch",style: TextStyle(
                                                                    fontSize: 10,
                                                                    color:Color(0xFF737373),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:  EdgeInsets.only(right: 20),
                                                                  child: Text("3",style: TextStyle(
                                                                    fontSize: 14,
                                                                    color:Colors.black,
                                                                  ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                          );
                                        },
                                        child: Icon(Icons.info_outline)
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:15,left: 15),
                                child: Row(
                                  children: [
                                    Icon(Icons.devices),
                                    SizedBox(width: 20,),
                                    Text("Device"),
                                    SizedBox(width: 200,),
                                    GestureDetector(
                                        onTap: (){
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context){
                                                return Container(
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF7F7F7),
                                                    borderRadius: BorderRadius.circular(25),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(height: 25,),
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 15),
                                                        child: Text("Device Information",style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: 'ProductSans',
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40,),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 15),
                                                        child: Container(
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(15)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Number of output devices (e.g., light bulbs) connected to this switch",style: TextStyle(
                                                                fontSize: 10,
                                                                color:Color(0xFF737373),
                                                              ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.only(right: 20),
                                                                child: Text("3",style: TextStyle(
                                                                  fontSize: 14,
                                                                  color:Colors.black,
                                                                ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                          );
                                        },
                                        child: Icon(Icons.info_outline)
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
