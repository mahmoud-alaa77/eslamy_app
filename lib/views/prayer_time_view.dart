
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/constants/constants.dart';
import 'package:my_quran_app/models/prayer_model.dart';
import 'package:my_quran_app/services/prayer_time_service.dart';

import '../widgets/prayer_time_item.dart';
import '../widgets/prayer_view_item.dart';

class PrayerTimeView extends StatefulWidget {
  const PrayerTimeView({super.key});

  @override
  State<PrayerTimeView> createState() => _PrayerTimeViewState();
}

class _PrayerTimeViewState extends State<PrayerTimeView> {
  dynamic future;
  @override
  void initState() {
    setState(() {

    });
    future=PrayerTimeService().getPrayerTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(

        body: FutureBuilder<PrayerModel>(
          future: future,
          builder: (context, snapshot)
    {
      var data = snapshot.data;
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return  Center(child: Text("يوجد مشكلة في الاتصال بالانترنت ",style: GoogleFonts.amiri(
          fontSize: 30,
        ),));
      }

           else {
             return Padding(
               padding: const EdgeInsets.all(16.0),

               child: ListView(
                 physics: const BouncingScrollPhysics(),
                 children: [
                   PrayerViewItem(
                     date: data!.dateOfDay,
                     day: data.arabicDayName,
                   ),
                   PrayerTimeItem(
                     title: "الفجر",
                     iconUrl: fajrIcon,
                     dateOfPlayer: data.fajr,
                   ),
                   PrayerTimeItem(
                     title: "الشروق",
                     iconUrl: sunriseIcon,
                     dateOfPlayer: data.sunrise,
                   ),
                   PrayerTimeItem(
                     title: "الضهر",
                     iconUrl: dhuhrIcon,
                     dateOfPlayer: data.dhuhr,
                   ),
                   PrayerTimeItem(
                     title: "العصر",
                     iconUrl: asrIcon,
                     dateOfPlayer: data.asr,
                   ),
                   PrayerTimeItem(
                     title: "المغرب",
                     iconUrl: maghribIcon,
                     dateOfPlayer:data.maghrib,
                   ),
                   PrayerTimeItem(
                     title: "العشاء",
                     iconUrl: ishaIcon,
                     dateOfPlayer: data.isha,
                   ),
                 ],
               )
             );
           }
          },
        )
      ),
    );
  }
}


//
//