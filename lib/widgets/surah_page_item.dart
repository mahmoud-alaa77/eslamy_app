import 'package:flutter/material.dart';
import '../helper/shared_preferences.dart';
class SurahPageItem extends StatefulWidget {
  const SurahPageItem({super.key, required this.imageUrl, required this.targetIndex});
final String imageUrl;
final int targetIndex;

  @override
  State<SurahPageItem> createState() => _SurahPageItemState();
}

class _SurahPageItemState extends State<SurahPageItem> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height ,
      width: MediaQuery.of(context).size.width,
      child: Stack(
          fit: StackFit.expand,
          children: [

            Image.asset(widget.imageUrl,
              fit: BoxFit.fill,

            ),
            GestureDetector(
              onDoubleTap: (){
                SharedPreference().saveNumOfPage(widget.targetIndex);

              },
            ),
          ],

        ),

    );
  }
}

/*
  Positioned(
            bottom: 5,
            left: 1,
            child: Container(
              height: 65,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [
                        kPrimaryColor,
                        Colors.white,
                        kPrimaryColor,
                      ]
                  ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        color: Colors.brown
                    )
                  ]
              ),
              child: Center(
                child: IconButton(
                  onPressed: ()async{
                    await SharedPreference().saveNumOfPage(targetIndex);
                  },
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
 */