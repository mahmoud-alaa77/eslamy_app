import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import '../helper/helper.dart';
import '../widgets/categories_grid_view.dart';
import '../widgets/custom_widgets/custom_horizontal_line.dart';
import '../widgets/custom_widgets/custom_light_widget.dart';
import '../widgets/custom_widgets/custom_text_button.dart';
import '../widgets/duaa_view_item.dart';
import '../widgets/quran_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:   Drawer(
        child: Padding(
          padding:const EdgeInsetsDirectional.only(top: 32, start: 12, bottom: 12),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(appIcon),
                backgroundColor: Colors.transparent,
                radius: 40,
              ),
              Text(" اسلامي",
                style: GoogleFonts.amiri(
                fontSize: 22
              ),),
              const SizedBox(
                height:50,
              ),
              CustomTextButton(
                title:"الذهاب لمكان العلامة" ,
                onTap: ()async{
                  int value =await Helper().getNumOfPage();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => QuranListView(
                        targetIndex:value ),));
                },
                icon: Icons.bookmark,
              ),
              const Divider(),
              CustomTextButton(
                title:"تقييم التطبيق" ,
                onTap: ()async{
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title:  Text('تقييم التطبيق',style: GoogleFonts.amiri(
                            color: kPrimaryColor,
                            fontSize: 20
                        )),
                        content:  Text("سوف تعمل عند رفع التطبيق علي المتجر",
                          style: GoogleFonts.amiri(
                            fontSize: 18,
                          ),
                        ),
                        actions: [
                          TextButton(
                            child:  Text('غلق', style: GoogleFonts.amiri(
                                color: kPrimaryColor,
                                fontSize: 20
                            )),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icons.star,
              ),
              const Divider(),
              CustomTextButton(
                title:"التواصل مع المطور" ,
                onTap: ()async{
                  final Uri faceBook = Uri.parse('https://www.facebook.com/profile.php?id=100006095133185');
  launchUrl(faceBook);
                },
                icon:  Icons.sensor_occupied,
              ),
              const Divider(),
              CustomTextButton(
                title:"معلومات عن التطبيق" ,
                onTap: (){
      showDialog(
      context: context,
      builder: (BuildContext context) {
      return AlertDialog(
      title:  Text('معلومات عن التطبيق',style: GoogleFonts.amiri(
          color: kPrimaryColor,
          fontSize: 20
      )),
      content:  Text("تطبيق إسلامي هو تطبيق يهدف إلى تقديم خدمات  للمسلمين. تم تطوير هذا التطبيق ليكون مساعداً رقمياً للمستخدمين الذين يرغبون في الاستفادة من المعلومات والأدوات المتعلقة بالدين الإسلامي."
      " تتضمن ميزات التطبيق في مجموعة واسعة من المحتوى الديني مثل القرآن الكريم وتفسيره كامل ، والأحاديث النبوية وشروحها، والاذكار,واسماء الله الحسني ومواقيت الاذان."
          "وقريبا سوف يتم اضافة مواقيت الاذان علي حسب الموقع الجغرافي ليس فقط في القاهرة. ",
      style: GoogleFonts.amiri(
      fontSize: 18,
      ),
      ),
      actions: [
      TextButton(
      child:  Text('غلق', style: GoogleFonts.amiri(
        color: kPrimaryColor,
        fontSize: 20
      )),
      onPressed: () {
      Navigator.of(context).pop();
      },
      ),
      ],
      );
      },
      );
      },
                icon:  Icons.info_outline,
              ),
              const Spacer(),
              Text("by Mahmoud Alaa",
                style: GoogleFonts.amiri(
                  fontSize: 18
              ),),
            ],
          ),
        ),
      ),
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

