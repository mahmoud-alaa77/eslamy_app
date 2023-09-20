
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/constants/constants.dart';


class HadithView extends StatefulWidget {
  const HadithView({super.key, required this.title, required this.des, required this.numOfHadith});
final String title;
final String des;
final String numOfHadith;

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
            child:Column(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: kPrimaryColor
                  ),
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(" الحديث ${widget.numOfHadith}",style: GoogleFonts.amiri(
                      fontSize: 25
                    ),),
                  ),
                ),
                Text( widget.title,
                    style: GoogleFonts.amiri(
                      fontSize: 22,

                    )),
                Container(
                  margin: const EdgeInsetsDirectional.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: kPrimaryColor
                  ),
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("شرح وفوائد الحديث",style: GoogleFonts.amiri(
                        fontSize: 25
                    ),),
                  ),
                ),
                Text(widget.des,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 20,

                    )),
              ],
            )
          ),
        ),
      ),
    );
  }
}

/*
 ListTile(
              title: Text( title,
                  style: GoogleFonts.amiri(
                    fontSize: 22,

                  )),
              subtitle:Text(des,
                  style: GoogleFonts.abel(
                      fontSize: 18,
                      color: Colors.grey
                  )),

            )
 */
