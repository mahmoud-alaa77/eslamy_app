import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titleButton, this.onTap});
final String titleButton;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width-80,
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
        child: Center(
          child: Text(
              titleButton,style: GoogleFonts.amiri(
              fontSize: 25,
              fontWeight: FontWeight.bold
          )
          ),
        ),
      ),
    );
  }
}