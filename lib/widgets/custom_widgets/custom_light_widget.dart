import 'dart:ui';

import 'package:flutter/material.dart';

class CustomLightWidget extends StatelessWidget {
   const CustomLightWidget({super.key,  required this.color,  required this.topPosition,  required this.leftPosition});
final Color color;
final double topPosition;
  final double leftPosition;

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        top: topPosition,
        left: leftPosition,
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: color
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 120,sigmaY: 55),
            child: const SizedBox(
              width: 150,
              height: 150,
            ),
          ),
        )

    );
  }
}
