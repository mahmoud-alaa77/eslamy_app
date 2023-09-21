import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';


class CategoryZekrAndHadithItem extends StatelessWidget {
  const CategoryZekrAndHadithItem({super.key, required this.title, this.onTap,  this.color, required this.height});
  final void Function()? onTap;
  final String title;
  final Color? color;
final double height;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
onTap: onTap,
      child: Container(
        height: height,
        margin: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 8
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          color: color,
            gradient: LinearGradient(
              colors: [
                kPrimaryColor,
                Colors.brown,
                kPrimaryColor.withOpacity(.8),

              ],
            )
        ),child: Center(
        child: Text(title,
          style: GoogleFonts.amiri(
            fontSize: 28
        ),
        ),
      ),
      ),
    );
  }
}
