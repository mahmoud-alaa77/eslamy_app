import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_quran_app/widgets/quran_list_view.dart';
import 'package:my_quran_app/widgets/surah_item.dart';

import '../constants/constants.dart';
import '../data/quran_data.dart';
import '../widgets/save_page_button_icon.dart';

class AllQuranView extends StatelessWidget {
  const AllQuranView({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title,
            style: GoogleFonts.amiri(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
         actions: const [
           SavePageButtonIcon(),

         ],
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.brown,
            ),
            itemBuilder: (context, index) {
              return SurahItem(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => QuranListView(
                      targetIndex: numberOfPage[index]["num"],
                    ),));
                },
                  title:arabicName[index]["name"] ,
                  subtitle: " عدد الايات : ${numOfVerses[index]} " ,
                  numberOfSurah:  arabicName[index]["surah"],
                  kindOfSurah: arabicName[index]["place"]=="k" ? kaabaIcon : madinaIcon
              );
            },
            itemCount: 114,
          ),
        ),
      ),
    );
  }
}
