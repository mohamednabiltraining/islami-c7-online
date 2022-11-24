import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightPrimary,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.black));
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkPrimary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.black));
}
