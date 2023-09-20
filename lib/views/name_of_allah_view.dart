
 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/name_of_allah_data.dart';
import '../widgets/custom_widgets/custom_horizontal_line.dart';

class NameOfAllahView extends StatelessWidget {
   const NameOfAllahView({super.key});

   @override
   Widget build(BuildContext context) {
     return  SafeArea(
       child: Scaffold(
         appBar: AppBar(
           title: Text("أسماء الله الحسني",
             style: GoogleFonts.amiri(
                 fontSize: 28,
                 fontWeight: FontWeight.bold
             ),
           ),

           centerTitle: true,
         ),
         body: const NameOfAllahListView(),
       ),
     );
   }
 }


 class NameOfAllahListView extends StatelessWidget {
   const NameOfAllahListView({super.key});

   @override
   Widget build(BuildContext context) {
     return  ListView.separated(
       physics: const BouncingScrollPhysics(),

       separatorBuilder: (context, index) => const Padding(
         padding: EdgeInsets.symmetric(horizontal: 12),
         child: CustomHorizontalLine(),
       ),
       itemCount: nameOfAllah.length,
       itemBuilder: (context, index) {
         var data= nameOfAllah[index];
         return ListTile(

           subtitle:Text(data["text"],
               style: GoogleFonts.amiri(
                   fontSize: 18,
                 color: Colors.grey
               )),
           leading: Text(data["name"],
             style: GoogleFonts.amiri(
                 fontSize: 25
             ),
           ),



         );
       },
     );
   }
 }

