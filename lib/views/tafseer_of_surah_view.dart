

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/data/quran_data.dart';
import 'package:my_quran_app/services/tafseer_service.dart';
import 'package:my_quran_app/widgets/custom_widgets/custom_horizontal_line.dart';

import '../constants/constants.dart';

class TafseerOfSurahView extends StatefulWidget {
  const TafseerOfSurahView({super.key, required this.numOfSurah,});
 final int numOfSurah;
  @override
  State<TafseerOfSurahView> createState() => _TafseerOfSurahViewState();
}

class _TafseerOfSurahViewState extends State<TafseerOfSurahView> {
  dynamic future;

  @override
  void initState() {
   future= TafseerOfQuranService().getTafseer(numOfSurah: widget.numOfSurah);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("تفسير معاني سورة ${arabicName[widget.numOfSurah-1]["name"]}",style: GoogleFonts.amiri(
            fontSize: 25
          ),) ,
          centerTitle: true,
        ),
        body:FutureBuilder<List<dynamic>>(
          future: future,
          builder: (context, snapshot) {
            var listOfAya=snapshot.data  ;

            if(snapshot.hasError){
            return  const Center(child: Text("يوجد مشكلة في الاتصال بالانترنت",style: TextStyle(fontSize: 30),));
          }else if(snapshot.connectionState== ConnectionState.waiting){
            return const Center(
            child: CircularProgressIndicator(),
            );
            }else{
            return Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const CustomHorizontalLine(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listOfAya[index].ayeText,
                  style: GoogleFonts.amiri(
                    fontSize: 25,
                      color: kPrimaryColor.withOpacity(.7)

                  ),
                  ),
                  subtitle: Text(listOfAya[index].tafseerText,
                    style: GoogleFonts.aladin(
                      fontSize: 20,
                      
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kPrimaryColor.withOpacity(.7),
                    radius: 20,
                    child:Text(listOfAya[index].numOfAya
                      ,style: GoogleFonts.amiri(
                        fontSize: 20,
                        color: Colors.white
                    ),
                    ) ,
                  ),
                );
              }
              ,
                itemCount:listOfAya!.length,
              ),
            );
            }
          },
        ) ,
      ),
    );
  }
}
