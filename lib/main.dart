import 'package:flutter/material.dart';
import 'package:islami_c7_online/hadeth_details/hadeth_details.dart';
import 'package:islami_c7_online/home/home_screen.dart';
import 'package:islami_c7_online/my_theme.dart';
import 'package:islami_c7_online/providers/settings_provider.dart';
import 'package:islami_c7_online/sura_details/sura_details_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(),
      // Shared instance // singleton
      child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
