import 'dart:async';

import 'package:flutter/material.dart';

import '../onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/splashshape.png'),
                ),
              )),
          Positioned(
              bottom: 170,
              child: Container(
                height: 500,
                width: 400,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/splashimage.png'),
                ),
              )),
          Positioned(
              bottom: 40,
              right: 35,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 117, 117),
                    shape: BoxShape.circle),
              ))
        ]),
      ),
    );
  }
}
