
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
import '../data/duaa_data.dart';

class DuaaViewItem extends StatelessWidget {
  const DuaaViewItem({super.key});

  String getRandomDuaa() {
    Random random = Random();
    int randomIndex = random.nextInt(listOfDuaa.length);
    return listOfDuaa[randomIndex];
  }
  String getRandomDuaaBackGround() {
    Random random = Random();
    int randomIndex = random.nextInt(duaaBackgroundImages.length);
    return duaaBackgroundImages[randomIndex];
  }
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(30),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/4,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(30),
          ),
          child:  Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                  getRandomDuaaBackGround(),
                  fit:BoxFit.fill,
                  opacity: const AlwaysStoppedAnimation(.8)
              ),
              Padding(
                padding:  const EdgeInsets.all(16),
                child:  Column(
                  children: [
                    Text("دعاء اليوم",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.amiri(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.underline
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(getRandomDuaa() ,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.amiri(
                           fontSize: 20,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
