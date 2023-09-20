
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class SurahItem extends StatefulWidget {
  const SurahItem({super.key, this.onTap, required this.title, required this.subtitle, required this.numberOfSurah, required this.kindOfSurah});

  final void Function()? onTap;
  final String title;
  final String subtitle;
  final String numberOfSurah;
  final String kindOfSurah;

  @override
  State<SurahItem> createState() => _SurahItemState();
}

class _SurahItemState extends State<SurahItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: kPrimaryColor.withOpacity(.1),
      onTap: widget.onTap,
      child: ListTile(
        title: Text(
          widget.title,style: GoogleFonts.amiri(
            fontSize: 25
        ),
        ),
        subtitle: Text(
          widget.subtitle ,style: GoogleFonts.amiri(
            fontSize: 20,
            color: Colors.grey
        ),
        ),
        leading: CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 20,
          child:Text(
            widget.numberOfSurah ,style: GoogleFonts.amiri(
              fontSize: 20,
              color: Colors.white
          ),
          ) ,
        ),
        trailing: Image.asset(widget.kindOfSurah ,width: 40,height: 40,),
      ),
    );
  }
}
