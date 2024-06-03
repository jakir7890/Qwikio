import 'package:art_grade/app/app_pkg.dart';
import 'package:art_grade/app/modules/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return SafeArea(

          child: Scaffold(
              backgroundColor: ColorConstants.whiteColor,
            body: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: controller.onboardingData.length,
                    controller: controller.pageController,
                    onPageChanged: (value) => controller.setCurrentIndex(value),
                    itemBuilder: (context, index) => Column(children: [
                      Dimens.reactiveHeight(90),
                      Image.asset(controller.onboardingData[index]["image"]!, height: Get.height/3,),
                      Dimens.spaceH20,
                      Text(controller.onboardingData[index]["title"]!, style: Get.textTheme.bodyMedium!.copyWith(fontSize: 22),),
                      Dimens.spaceH15,
                      Text(controller.onboardingData[index]["description"]!, style: Get.textTheme.titleSmall, textAlign: TextAlign.center,),
                      Dimens.spaceH20,

                    ],),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(controller.onboardingData.length, (index) => dotIndicator(index: index, currentIndex: controller.currentIndex, context: context),),),
                ),

              ],
            ),
            bottomNavigationBar: const OnboardingBottomNav(),
          ),
        );
      }
    );
  }

}


