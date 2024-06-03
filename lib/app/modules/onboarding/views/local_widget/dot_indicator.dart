import 'package:art_grade/app/core/values/values.dart';
import 'package:flutter/material.dart';

AnimatedContainer dotIndicator({required int index, required int currentIndex, required BuildContext context}){
    return AnimatedContainer(
        margin: const EdgeInsets.all(3),
        height: 8,
        width: currentIndex == index? 35:8,
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: currentIndex == index? ColorConstants.dotPrimary: ColorConstants.dotSecondary,
          borderRadius:  BorderRadius.circular(3)
        ),

        duration: const Duration(milliseconds: 500));

}