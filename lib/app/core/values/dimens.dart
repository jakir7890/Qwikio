

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Dimens {
  Dimens._();

  static const int timeout = 30;
  static const double mobileScreenSize = 340;
  static const double tabletScreenSize = 640;
  static const double desktopScreenSize = 1440;

  static const double defaultScreenWidth = 320.0;
  static const double defaultScreenHeight = 640.0;
  static const bool allowFontScalling = false;
  static const double space1 = 1;
  static const double space2 = 2;
  static const double space3 = 3;
  static const double space4 = 4;
  static const double space5 = 5;
  static const double space6 = 6;
  static const double space8 = 8;
  static const double space10 = 10;
  static const double space11 = 11;
  static const double space12 = 12;
  static const double space13 = 13;
  static const double space14 = 14;
  static const double space15 = 15;
  static const double space16 = 16;
  static const double space18 = 18;
  static const double space20 = 20;
  static const double space22 = 22;
  static const double space24 = 24;
  static const double space26 = 26;
  static const double space28 = 28;
  static const double space30 = 30;
  static const double space32 = 32;
  static const double space35 = 35;
  static const double space38 = 38;
  static const double space42 = 42;
  static const double space50 = 50;
  static const double space60 = 60;
  static const double space61 = 61;
  static const double space62 = 62;
  static const double space63 = 63;
  static const double space64 = 64;
  static const double space65 = 65;
  static const double space70 = 70;
  static const double space90 = 90;
  static const double space100 = 100;
  static double fontSizeMint = 8;
  static double fontSizeExtraSmall = 10;
  static double fontSizeSmall = 12;
  static double fontSizeDefault = 14;
  static double fontSizeMedium = 16;
  static double fontSizeExtraMedium = 18;
  static double fontSizeLarge = 24;
  static double fontSizeExtraLarge = 33;
  static const pagePadding = EdgeInsets.symmetric(vertical: 8, horizontal: 16);
  static const miniDuration =  Duration(milliseconds: 200);
  static const regularDuration =  Duration(milliseconds: 500);
  static SizedBox reactiveHeight(double  height) {
    double value =  Get.height / height;
    return SizedBox(height:Get.height / value,);
  }
  static SizedBox spaceH2 = const SizedBox(
    height: space2,
  );
  static SizedBox spaceH4 = const SizedBox(
    height: space4,
  );
  static SizedBox spaceH6 = const SizedBox(
    height: space6,
  );
  static  SizedBox spaceH8 = const SizedBox(
    height: space8,
  );
  static SizedBox spaceH10 = const SizedBox(
    height: space10,
  );
  static SizedBox spaceH12 = const SizedBox(
    height: space12,
  );
  static SizedBox spaceH14 = const SizedBox(
    height: space14,
  );
  static SizedBox spaceH15 = const SizedBox(
    height: space15,
  );
  static SizedBox spaceH16 = const SizedBox(
    height: space16,
  );
  static SizedBox spaceH18 = const SizedBox(
    height: space18,
  );
  static SizedBox spaceH20 = const SizedBox(
    height: space20,
  );
  static SizedBox spaceH22 = const SizedBox(
    height: space22,
  );
  static SizedBox spaceH24 = const SizedBox(
    height: space24,
  );
  static SizedBox spaceH26 = const SizedBox(
    height: space26,
  );
  static SizedBox spaceH28 = const SizedBox(
    height: space28,
  );
  static SizedBox spaceH30 = const SizedBox(
    height: space30,
  );
  static SizedBox spaceH32 = const SizedBox(
    height: space32,
  );
  static SizedBox spaceH35 = const SizedBox(
    height: space35,
  );
  static SizedBox spaceH38 = const SizedBox(
    height: space38,
  );
  static SizedBox spaceH42 = const SizedBox(
    height: space42,
  );
  static SizedBox spaceH50 = const SizedBox(
    height: space50,
  );
  static SizedBox spaceH60 = const SizedBox(
    height: space60,
  );
  static SizedBox spaceH70 = const SizedBox(
    height: space70,
  );
  static SizedBox spaceH90 = const SizedBox(
    height: space90,
  );
  static SizedBox spaceH100 = const SizedBox(
    height: space100,
  );
  // height of the body

  static SizedBox reactiveWidth(double  width) {double value =  Get.width / width;
    return SizedBox(width:Get.width / value,);}
  static SizedBox spaceW2 = const SizedBox(
    width: 2,
  );
  static SizedBox spaceW4 = const SizedBox(
    width: space4,
  );
  static SizedBox spaceW6 = const SizedBox(
    width: space6,
  );
  static SizedBox spaceW8 = const SizedBox(
    width: space8,
  );
  static SizedBox spaceW10 = const SizedBox(
    width: space10,
  );
  static SizedBox spaceW12 = const SizedBox(
    width: space12,
  );
  static SizedBox spaceW14 = const SizedBox(
    width: space14,
  );
  static SizedBox spaceW15 = const SizedBox(
    width: space15,
  );
  static SizedBox spaceW16 = const SizedBox(
    width: space16,
  );
  static SizedBox spaceW18 = const SizedBox(
    width: space18,
  );
  static SizedBox spaceW20 = const SizedBox(
    width: space20,
  );
  static SizedBox spaceW22 = const SizedBox(
    width: space22,
  );
  static SizedBox spaceW24 = const SizedBox(
    width: space24,
  );
  static SizedBox spaceW26 = const SizedBox(
    width: space26,
  );
  static SizedBox spaceW28 = const SizedBox(
    width: space28,
  );
  static SizedBox spaceW30 = const SizedBox(
    width: space30,
  );
  static SizedBox spaceW32 = const SizedBox(
    width: space32,
  );
  static SizedBox spaceW35 = const SizedBox(
    width: space35,
  );
  static SizedBox spaceW38 = const SizedBox(
    width: space38,
  );
  static SizedBox spaceW342 = const SizedBox(
    width: space32,
  );
  static SizedBox spaceW50 = const SizedBox(
    width: space50,
  );
  static SizedBox spaceW60 = const SizedBox(
    width: space60,
  );
  static SizedBox spaceW61 = const SizedBox(
    width: space61,
  );
  static SizedBox spaceW62 = const SizedBox(
    width: space62,
  );
  static SizedBox spaceW63 = const SizedBox(
    width: space63,
  );
  static SizedBox spaceW64 = const SizedBox(
    width: space64,
  );
  static SizedBox spaceW65 = const SizedBox(
    width: space65,
  );
  static SizedBox spaceW70 = const SizedBox(
    width: space70,
  );



//   static double paddingWidthSmall = 8.0.w;
//   static double paddingWidthMedium = 16.0.w;
//   static double paddingWidthLarge = 32.0.w;
//
//   static double paddingHeightSmall = 8.0.h;
//   static double paddingHeightMedium = 16.0.h;
//   static double paddingHeightLarge = 32.0.h;
//
//   static double fontDefault = 14.sp;
//   static double fontMedium = 16.sp;
//   static double fontLarge = 24.sp;
//
//   static double iconDefault = 24.w;
}