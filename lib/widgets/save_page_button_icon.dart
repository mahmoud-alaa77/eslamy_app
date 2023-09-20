

import 'package:flutter/material.dart';
import 'package:my_quran_app/widgets/quran_list_view.dart';

import '../constants/constants.dart';
import '../helper/shared_preferences.dart';

class SavePageButtonIcon extends StatelessWidget {
  const SavePageButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(

      highlightColor:  kPrimaryColor.withOpacity(.5),
      onPressed: ()async{
        int value =await SharedPreference().getNumOfPage();


        Navigator.push(context, MaterialPageRoute(
          builder: (context) => QuranListView(
              targetIndex:value ),));
      },
      icon: const Icon(
        Icons.bookmark_added,
        color: kPrimaryColor,
        size: 35,
      ),
    );
  }
}
