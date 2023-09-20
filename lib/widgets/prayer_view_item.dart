
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class PrayerViewItem extends StatelessWidget {
  const PrayerViewItem({super.key, required this.day, required this.date});
  final String day;
  final String date;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(30),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/4.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(30),
          ),
          child:  Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                  prayerBackgroundImage,
                  fit:BoxFit.fill,
                  opacity: const AlwaysStoppedAnimation(.5)
              ),
              Center(
                child: Text(" مواعيد الاذان بتوقيت القاهرة \n بتاريخ اليوم $day $date",
                  style: GoogleFonts.amiri(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),),
              )
            ],
          )
      ),
    );
  }
}
