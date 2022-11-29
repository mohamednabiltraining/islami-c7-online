import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c7_online/providers/settings_provider.dart';
import 'package:islami_c7_online/sura_details/sura_details_args.dart';
import 'package:islami_c7_online/sura_details/verse_widget.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // receive parameters;
    // down casting convert from ptr of type Object to pointer of type SuraDetailsScreenArgs
    SuraDetailsScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    if (verses.isEmpty) readFile(args.index + 1); // non-blocking

    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getMainBackgroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: verses.isEmpty
              ? // still reading file
              Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  elevation: 12,
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return VerseWidget(verses[index], index + 1);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Theme.of(context).accentColor,
                        height: 1,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      );
                    },
                  ),
                ),
        ));
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt'); // block
    List<String> lines = fileContent.trim().split('\n');
    // show in list view
    //   rebuild
    print(fileContent);
    setState(() {
      verses = lines;
    });
  }
}
