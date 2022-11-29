import 'package:flutter/material.dart';
import 'package:islami_c7_online/home/hadeth/Hadeth.dart';
import 'package:islami_c7_online/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getMainBackgroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              elevation: 12,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    args.content,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
