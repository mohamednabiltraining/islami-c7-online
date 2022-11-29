import 'package:flutter/material.dart';
import 'package:islami_c7_online/hadeth_details/hadeth_details.dart';
import 'package:islami_c7_online/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
