import 'package:flutter/material.dart';
import 'package:my_quran_app/helper/helper.dart';
import 'package:my_quran_app/widgets/surah_page_item.dart';

import '../constants/constants.dart';

class QuranListView extends StatelessWidget {
  const QuranListView({super.key, required this.targetIndex});
final int targetIndex;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Stack(
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder:
                (context, index) {
              return SurahPageItem(
                  imageUrl: "assets/quranImages/${targetIndex+index}.png",
                targetIndex: targetIndex+index,
              );
            },
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            controller: PageController(
// initialPage:
            ),
            itemCount: (604-targetIndex+1),
          ),
        ],
      ),
    );
  }
}

/*

 */