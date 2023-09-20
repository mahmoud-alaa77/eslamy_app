
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/views/tafseer_of_surah_view.dart';

import '../constants/constants.dart';
import '../data/quran_data.dart';

class TafseerView extends StatelessWidget {
  const TafseerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child:Column(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(bottom: 12),
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: kPrimaryColor
                ),
                child: Center(child: Text("اختر السورة التي تريد معرفة معاني اياتها",style:
                  GoogleFonts.amiri(
                    fontSize: 24
                  ),)),
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  TafseerOfSurahView(numOfSurah: index+1),));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: kPrimaryColor,
                          radius: 20,
                          child:Text(
                            arabicName[index]["surah"],style: GoogleFonts.amiri(
                              fontSize: 20,
                              color: Colors.white
                          ),
                          ) ,
                        ),
                        title: Text(
                          "سورة ${arabicName[index]["name"]}",style: GoogleFonts.amiri(
                            fontSize: 25
                        ),
                        ),
                      ),
                    );
                  },
                  itemCount: arabicName.length,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
