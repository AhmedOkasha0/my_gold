import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_gold_app/ui/OnBoarding_screen/onBoarding_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
    });
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/splash_screen.png',
              fit: BoxFit.fill,
              height: screenSize.height * 1,
              width: screenSize.width * 1,
            ),
          ),
        ],
      ),
    );
  }
}
