import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color yellow = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)))),
      cardColor: Colors.white,
      accentColor: lightPrimary,
      textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
          headline4: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ),
          subtitle2: TextStyle(fontSize: 14, color: Colors.black)),
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
    cardColor: darkPrimary,
    accentColor: yellow,
    // colorScheme: ColorScheme(
    //
    // ),
    textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        headline4: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
        subtitle2: TextStyle(fontSize: 14, color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimary,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 36, color: yellow),
        unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
        selectedLabelStyle: TextStyle(color: yellow),
        selectedItemColor: yellow),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)))),
  );
}
