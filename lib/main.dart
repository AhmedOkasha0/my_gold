import 'package:flutter/material.dart';
import 'package:my_gold_app/theme/Theme_screen.dart';
import 'package:my_gold_app/ui/Home/Home_screen.dart';
import 'package:my_gold_app/ui/OnBoarding_screen/onBoarding_screen.dart';
import 'package:my_gold_app/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
        HomeScreen.routeName :(context)=>HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ThemeScreen.lightTheme,
    );
  }
}
