import 'dart:async';
import 'package:flutter/material.dart';
import 'package:traveller/view/homeview.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait 3 seconds then navigate to home
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Homeview(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child:
        ClipRRect(child: Image.asset('assets/images/appicon.jpg', width: double.infinity),)
         
      ),
    );
  }
}
