import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class HadithTitleWidget extends StatelessWidget {
  const HadithTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          gradient: LinearGradient(
            colors: [
              kPrimaryColor,
              Colors.brown,
              kPrimaryColor.withOpacity(.8),

            ],
          )
      ),
      height: MediaQuery.of(context).size.height/10,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(title,style: GoogleFonts.amiri(
            fontSize: 25
        ),),
      ),
    );
  }
}