import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onTap, required this.iconUrl, required this.title});
 final void Function()? onTap;
 final String iconUrl;
 final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
           maxHeight: 175,
          maxWidth: 175
        ),
       // width: MediaQuery.of(context).size.width/3.7,
        //height: MediaQuery.of(context).size.width/3.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: Colors.brown.withOpacity(.4)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(
                iconUrl,
              //  width: 60,
               // height: 60,
              ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,style: GoogleFonts.amiri(
                    fontSize: 20,
                    fontWeight: FontWeight.bold

                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
