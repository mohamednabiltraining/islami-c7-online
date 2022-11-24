import 'package:flutter/material.dart';
import 'package:islami_c7_online/home/hadeth/hadeth_tab.dart';
import 'package:islami_c7_online/home/quran/quran_tab.dart';
import 'package:islami_c7_online/home/radio/radio_tab.dart';
import 'package:islami_c7_online/home/sebha/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (newlySelectedIndex) {
              setState(() {
                selectedIndex = newlySelectedIndex;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: 'Radio'),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
