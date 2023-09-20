

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/views/home_view.dart';
import 'package:my_quran_app/widgets/custom_widgets/custom_light_widget.dart';

import '../constants/constants.dart';
import '../widgets/custom_widgets/custom_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         CustomLightWidget(
             color: kPrimaryColor,
             topPosition: MediaQuery.of(context).size.height-200,
             leftPosition: MediaQuery.of(context).size.width/4,
           
         ),
          const CustomLightWidget(
              color: kPrimaryColor,
              topPosition: 0,
              leftPosition: 0
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                    appName,style: GoogleFonts.amiri(
                  fontSize: 45,
                )
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  appIcon,
                  width:MediaQuery.of(context).size.width ,
                  height: 300,

                ),
                const SizedBox(
                  height: 16,
                ),
                Text(welcomeText,
                  textAlign:TextAlign.center,
                  style: GoogleFonts.amiri(
                   // color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ) ,),
                const SizedBox(
                  height: 32,
                ),
                 CustomButton(
                   titleButton: "ابدأ الان",
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeView() ,));
                   },
                 ),
                const Spacer(
                  flex: 2,
                ),

              ],
            ),
          ),
          Positioned(
            bottom: -20,
            width: MediaQuery.of(context).size.width,
            child:  SvgPicture.asset(
              mosqueImageUrl,
            width:MediaQuery.of(context).size.width ,
            fit: BoxFit.fill,
          ),
          )

        ],
      ),
    );
  }
}

