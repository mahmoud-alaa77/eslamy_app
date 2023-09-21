
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/constants/constants.dart';
import 'package:my_quran_app/widgets/custom_widgets/custom_horizontal_line.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key, required this.zekrCategory, required this.title});
final List zekrCategory;
final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:RichText(
          text:  TextSpan(
            text: '<< ',
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 25
            ), // Default text style
            children: <TextSpan>[
              TextSpan(
                text: title,
                style: GoogleFonts.amiri(
                  fontSize: 25
                )
              ),
              const TextSpan(
                text: ' >>',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: CustomHorizontalLine(),
              ),
              itemCount: zekrCategory.length,
                itemBuilder: (context, index) {
                var data=zekrCategory[index];
                  return GestureDetector(
                    onTap:  (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(data["bless"]),
                           backgroundColor: kPrimaryColor,
                          );
                        },
                      );
                    },
                    child: ListTile(
                      title: Text(data["zekr"],
                     style: GoogleFonts.amiri(
                       fontSize: 22
                     ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: kPrimaryColor.withOpacity(.7),
                        radius: 20,
                        child:Text(
                          data["repeat"].toString() ,style: GoogleFonts.amiri(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        ) ,
                      ),
                    ),
                  );
                },
      )
    );
  }
}

