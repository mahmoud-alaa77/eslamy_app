
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onTap, required this.title, required this.icon});
final void Function()? onTap;
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Row(
        children: [

           Icon(
           icon,
            color: kPrimaryColor,
            size: 35,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(title,
            style: GoogleFonts.amiri(
                fontSize: 22
            ),),

        ],
      ),
    );
  }
}
