import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yarab/dashboard.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'main.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.black,
    fontFamily: 'BebasNeuePro',
  ),
  home: const Register(),
));

class Register extends StatelessWidget {
  const Register({super.key});

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
                      onTap: (){
                        Navigator.push(context, _createRoute(Login()));
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,size: 40,),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 65,
                        width: 65,
                        child: Image(image: AssetImage("assets/NewLogo2.png")),
                      ),
                    )
                    // Image.asset('assets/NewLogo2.png')
                  ],
                ),
              ),
              // SizedBox(height: 25,),
              Container(
                height: MediaQuery.of(context).size.height-140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 35,),
                    Center(
                      child: Text("Create new\n   Account",style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: EdgeInsets.only(right: 300),
                      child: Text("Name",style: TextStyle(
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
                      padding: EdgeInsets.only(right: 300),
                      child: Text("Email",style: TextStyle(
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
                      padding: EdgeInsets.only(right: 300),
                      child: Text("Password",style: TextStyle(
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
                    GestureDetector(
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
                            child: Text("Sign Up",style: TextStyle(
                                fontFamily: 'ProductSans',
                                color: Colors.white,
                                fontSize: 20
                              ),
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    Text("Or Sign up with"),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("assets/google-logo.png"),
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