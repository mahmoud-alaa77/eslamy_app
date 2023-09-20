
import 'package:flutter/material.dart';
import 'package:my_quran_app/data/azkar_data/after_prayer_azkar.dart';
import 'package:my_quran_app/data/azkar_data/azkar_massa.dart';
import 'package:my_quran_app/data/azkar_data/azkar_sabah.dart';
import 'package:my_quran_app/data/azkar_data/mosque_azkar.dart';
import 'package:my_quran_app/widgets/category_zekr_and_hadith_item.dart';

import '../constants/constants.dart';
import 'azkar_view.dart';

class AzkarCategoryView extends StatelessWidget {
  const AzkarCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight= MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CategoryZekrAndHadithItem(
                height:screenHeight/5,
                  title: "أذكار الصباح",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>   AzkarView(
                    zekrCategory:azkarSabah,
                  title: "أذكار الصباح",

                ),));
              },
                color: kPrimaryColor.withOpacity(.5),

              ),
              CategoryZekrAndHadithItem(
                height:screenHeight/5,

                title: "أذكار المساء",
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      AzkarView(
                          zekrCategory: azkarMassa,
                        title: "أذكار المساء",
                      ),));
                },
                color: kPrimaryColor.withOpacity(.5),

              ),
              CategoryZekrAndHadithItem(
                height:screenHeight/5,

                title: "أذكار بعد الصلاة",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>   AzkarView(zekrCategory:prayerAzkar,
                    title: "أذكار بعد الصلاة",

                  ),));
                },
                color: kPrimaryColor.withOpacity(.5),
              ),
              CategoryZekrAndHadithItem(
                height:screenHeight/5,

                color: kPrimaryColor.withOpacity(.5),
                title: "أذكار المسجد",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>   AzkarView(
                      zekrCategory:mosqueAzkar,
                    title: "أذكار المسجد",
                  ),));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

