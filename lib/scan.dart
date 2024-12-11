
import 'package:flutter/material.dart';
import 'package:yarab/appdrawer.dart';

import 'appbarcustom.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: scan(),
    );
  }
}

class scan extends StatefulWidget {
  const scan({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<scan> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() async {
    for (double i = 0; i <= 1.1; i += 0.01) {
      await Future.delayed(const Duration(milliseconds: 500));
      setState(() {
        _progress = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const appdrawer(),
      backgroundColor: Colors.white,
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const appbar(),
            const SizedBox(height:20),
             Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 270,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: LinearProgressIndicator(value: _progress,color: Colors.black,backgroundColor: Colors.grey[200],)
                  ),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.center,
                  child: Center(
                    child : Text("Scanning Devices...",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
