import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:art_grade/app/app_pkg.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    logInfo(controller.hashCode);
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Column(
        children: [

          const Spacer(),
          Center(child: Image.asset(AssetsConstants.appLogo)),
          const Spacer(),
          
        ],
      ),
    );
  }
}


