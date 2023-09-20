import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
import '../widgets/categories_grid_view.dart';
import '../widgets/custom_widgets/custom_horizontal_line.dart';
import '../widgets/custom_widgets/custom_light_widget.dart';
import '../widgets/duaa_view_item.dart';
import '../widgets/save_page_button_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(

        title:  Text(
            appName,style: GoogleFonts.amiri(
          fontSize: 30,
        )
        ),
        centerTitle: true,

      ),
      body:   Padding(
        padding:const EdgeInsetsDirectional.symmetric(horizontal: 8,),
        child:
          Stack(
            children: [
              CustomLightWidget(
                  color: kPrimaryColor,
                  topPosition: MediaQuery.of(context).size.height-250,
                  leftPosition: MediaQuery.of(context).size.width/4,
              ),
              Positioned(
                bottom: -20,
                width: MediaQuery.of(context).size.width,
                child:  SvgPicture.asset(
                  mosqueImageUrl,
                  width:MediaQuery.of(context).size.width ,
                  fit: BoxFit.fill,
                ),
              ),
               ListView(
                 physics: const BouncingScrollPhysics(),
                children: const [
                  CustomHorizontalLine(),
                  DuaaViewItem(),
                  CustomHorizontalLine(),
                  CategoriesGridView(),
                ],
              ),
            ],
          )
      ),

    );
  }
}

