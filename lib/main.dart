import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_quran_app/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants/constants.dart';
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'اسلامي',
      theme: ThemeData(
brightness: Brightness.dark,

       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor:kPrimaryColor
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        //Locale('en'), // English
        Locale('ar'), // arabic
      ],
      home: const SplashView(),

    );
  }
}

