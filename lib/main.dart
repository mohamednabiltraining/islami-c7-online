import 'package:flutter/material.dart';
import 'package:islami_c7_online/home/home_screen.dart';
import 'package:islami_c7_online/my_theme.dart';
import 'package:islami_c7_online/sura_details/sura_details_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
