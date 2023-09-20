import 'package:flutter/material.dart';
import 'package:my_quran_app/constants/constants.dart';

class CustomHorizontalLine extends StatelessWidget {
  const CustomHorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      child: Row(

        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: kPrimaryColor,
                    width: 3
                )
            ),
          ),
          Expanded(
            child:   Container(
              //width: MediaQuery.of(context).size.width/2.5,
              height: 1,
              decoration:  const BoxDecoration(
                  color:kPrimaryColor
              ),
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: kPrimaryColor,
                    width: 3
                )
            ),
          ),
          Expanded(
            child:   Container(
              //width: MediaQuery.of(context).size.width/2.5,
              height: 1,
              decoration:  const BoxDecoration(
                  color: kPrimaryColor
              ),
            ),
          ),

          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: kPrimaryColor,
                    width: 3
                )
            ),
          ),
        ],
      ),
    );
  }
}
