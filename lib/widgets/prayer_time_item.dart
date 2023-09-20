import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class PrayerTimeItem extends StatefulWidget {
  const PrayerTimeItem({super.key, required this.title, required this.iconUrl, required this.dateOfPlayer});

  final String title;
  final String iconUrl;
  final String dateOfPlayer;

  @override
  State<PrayerTimeItem> createState() => _PrayerTimeItemState();
}

class _PrayerTimeItemState extends State<PrayerTimeItem> {
  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    return  Container(
      padding: const EdgeInsetsDirectional.all(8),
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 8,vertical: 8),
      width: screenWidth,

      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(24),
          color: kPrimaryColor.withOpacity(.5)
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kPrimaryColor.withOpacity(.5),
              radius:screenWidth>=300? screenWidth/10:screenWidth/15,
              backgroundImage:  AssetImage(widget.iconUrl)
          ),
          const Spacer(
            flex: 1,
          ),
          Text(widget.title,
            style: GoogleFonts.amiri(
              fontSize: 28,
              fontWeight: FontWeight.bold,


            ),),
          const Spacer(
            flex: 4,
          ),
          Text(widget.dateOfPlayer,
            style: GoogleFonts.amiri(
              fontSize: 26,
              fontWeight: FontWeight.bold,


            ),),
          const Spacer(
            flex:2,
          ),
        ],
      ) ,
    );
  }
}
