
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/hadith_title_widget.dart';


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
                HadithTitleWidget(title: " الحديث ${widget.numOfHadith}"),
                Text( widget.title,
                    style: GoogleFonts.amiri(
                      fontSize: 22,

                    )),
              const HadithTitleWidget(title: "شرح وفوائد الحديث"),
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



