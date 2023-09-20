import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran_app/views/welcome_view.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/constants.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      splash: Image.asset(appIcon),
      splashIconSize:280  ,
      backgroundColor: Colors.black26,
      nextScreen:const WelcomeView(),
      disableNavigation: false,
      duration: 400,
      animationDuration: const Duration(seconds: 1),
      pageTransitionType: PageTransitionType.bottomToTop,
      splashTransition: SplashTransition.scaleTransition,

    );
  }
}
