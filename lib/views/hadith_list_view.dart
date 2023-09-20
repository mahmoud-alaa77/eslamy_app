
import 'package:flutter/material.dart';
import 'package:my_quran_app/data/hadith_data.dart';
import 'package:my_quran_app/views/hadith_view.dart';
import 'package:my_quran_app/widgets/custom_widgets/custom_horizontal_line.dart';

import '../widgets/category_zekr_and_hadith_item.dart';

class HadithListView extends StatelessWidget {
  const HadithListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CategoryZekrAndHadithItem(
                  height: MediaQuery.of(context).size.height/14,
                  title: "الحديث ${listOfOrder[index]} ",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HadithView(
                        title:" ${listOfHadith[index]["hadith"]}",
                        des:  " ${listOfHadith[index]["description"]}",
                        numOfHadith: listOfOrder[index],
                      );
                    },));
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const CustomHorizontalLine();
              },
              itemCount: listOfOrder.length
          ),
        ),
      ),
    );
  }
}
