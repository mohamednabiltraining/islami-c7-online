import 'package:flutter/material.dart';
import 'package:islami_c7_online/sura_details/sura_details_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    // receive parameters;
    // down casting convert from ptr of type Object to pointer of type SuraDetailsScreenArgs
    SuraDetailsScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    //print(args.name);
    //print(args.index);
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
        ));
  }
}
