

import 'package:flutter/material.dart';
import 'package:my_quran_app/views/hadith_list_view.dart';
import 'package:my_quran_app/views/prayer_time_view.dart';

import '../constants/constants.dart';
import '../views/all_quran_view.dart';
import '../views/azkar_category_view.dart';
import '../views/name_of_allah_view.dart';
import '../views/tafseer_view.dart';
import 'category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
shrinkWrap: true,
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          CategoryItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const AllQuranView(title: "القرآن الكريم"),));
            },
            iconUrl: quranIcon,
            title: 'القرآن',
          ),
          CategoryItem(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const AzkarCategoryView(),));
            },
            iconUrl: tasbihIcon,
            title: 'الأذكار ',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const TafseerView(),));
            },
            iconUrl: tafseerIcon,
            title: 'تفسير القرآن',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const PrayerTimeView(),));
            },
            iconUrl: prayingIcon,
            title: 'مواقيت الصلاه',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NameOfAllahView() ));
            },
            iconUrl: allahIcon,
            title: 'الاسماء الحسني',
          ),

          CategoryItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HadithListView() ));
            },
            iconUrl: hadeathIcon,
            title: 'احاديث',
          ),

        ],
      ),
    );
  }
}
