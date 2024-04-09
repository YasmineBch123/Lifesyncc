import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart'; // Import your main app screen here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen())); // Navigate to the main screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center( 
        child: Container(
          width: 400, 
          height: 400, 
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/lifesyncsplashscreen.png'), 
              fit: BoxFit.contain, 
            ),
          ),
        ),
      ),
    );
  }
}