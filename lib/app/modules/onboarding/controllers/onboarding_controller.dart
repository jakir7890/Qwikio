import 'package:art_grade/app/app_pkg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController implements GetxService{

   PageController pageController = PageController();
   int currentIndex = 0;
   bool get isLastPage => (currentIndex+1)!= onboardingData.length;
   void nextPage(){
     if(isLastPage){
       pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);

     }else{
       Get.toNamed(Routes.HOME);
     }


   }
   void setCurrentIndex(int index){
     currentIndex = index;
     update();
   }

List<Map<String, String>> onboardingData = [
  {
    "image" : AssetsConstants.searchIllustration,
    "title" : StringConstants.onboardingFirstTitle,
    "description" : StringConstants.firstDescription
  },{
    "image" : AssetsConstants.carIllustration,
    "title" : StringConstants.onboardingsecondTitle,
    "description" : StringConstants.firstDescription
  },{
    "image" : AssetsConstants.phoneIllustration,
    "title" : StringConstants.onboardingthirdTitle,
    "description" : StringConstants.firstDescription
  },

];
}
