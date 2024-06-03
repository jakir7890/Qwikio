import 'package:get/get.dart';

import '../../../app_pkg.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
   // var token = StorageService.read(StorageConstants.accessToken);
    Future.delayed(const Duration(seconds: 3),(){
      Get.offAllNamed(Routes.ONBOARDING);

      /*if(token==null){
        // Get.offNamed(Routes.CHOOSE_EXAM_TYPE);
        Get.offAllNamed(Routes.LOGIN);
      }else{
        Get.offNamed(Routes.HOME);
      }*/

    });
  }



}
