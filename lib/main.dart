import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yarab/dashboard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:yarab/register.dart';
import 'package:yarab/room.dart';
import 'package:yarab/roomlist.dart';



void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.black,
    fontFamily: 'ProductSans',
  ),
  home: const Login(),
));

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFD0CD37),
                        Color(0xFF27A8E0),
                      ],
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(300),bottomRight: Radius.circular(300))
                  ),
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      // color: Colors.blue
                    ),
                  ),
                ),
              SizedBox(height: 60,),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  child:  Column(
                    children: [
                    // const SizedBox(height: 20.0),
                    TextField(
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
                    const SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xFF27A8E0),
                            ),
                          ),
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock, color: Colors.black,)
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 25.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                            _createRoute(dashboard(passedid: 1))
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFFD0CD37),
                              Color(0xFF27A8E0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text("Login",style: TextStyle(
                              fontFamily: "ProductSans",
                              color: Colors.white,
                              fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ),
                      SizedBox(height: 30.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          _createRoute(Register())
                        );
                      },
                      child: const Text('Register',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,

                      ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Center(
                      child: Text("Or Log in with",style:
                        TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 15
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                      color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("assets/google-logo.png"),
                      )
                    ],
                  ),
                ),
            ]
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