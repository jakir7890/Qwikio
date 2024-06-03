import 'package:art_grade/app/app_pkg.dart';
import 'package:art_grade/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingBottomNav extends StatelessWidget {
  const OnboardingBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Container(

          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
          decoration: BoxDecoration(

              color: controller.isLastPage?  ColorConstants.whiteColor: ColorConstants.primaryColor,
              boxShadow: [
                BoxShadow(color: ColorConstants.secondaryColor.withOpacity(0.4), spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, -1))
              ]
          ),height: Get.height/14,
          child:   InkWell(
              onTap: () {controller.nextPage();},
              child:  controller.isLastPage? Text('Next',style: Get.textTheme.titleSmall!.copyWith(fontSize: 20) , textAlign: TextAlign.right,):Text("Let's Get Started",style: Get.textTheme.titleSmall!.copyWith(fontSize: 16, color: ColorConstants.whiteColor) , textAlign: TextAlign.center,)),
        );
      }
    );
  }
}