import 'package:flutter/material.dart';

class ThemeScreen {
  static const Color primaryColor=Color(0xff5D001A);
  static const secondColor=Color(0xffFFDB95);
  static ThemeData lightTheme = ThemeData(
     appBarTheme: AppBarTheme(
       elevation: 0,
       color: primaryColor,
  //
     ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
  ));

}
