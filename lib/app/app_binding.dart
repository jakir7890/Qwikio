

import 'package:get/get.dart';

import 'controller/app_controller.dart';
import 'data/data.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    // Get.lazyPut(()=>Ref(), fenix: true);
    //provider
    Get.lazyPut(()=>AuthProvider(), fenix: true);
    Get.lazyPut(()=>AppProvider(), fenix: true);
    Get.lazyPut(()=>HomeProvider(), fenix: true);
    //Repository
    Get.put(AuthRepository(authProvider: Get.find()), permanent: true);
    Get.put(HomeRepository(homeProvider: Get.find()), permanent: true);
    //controller
    Get.lazyPut(() => AppController(appProvider: Get.find()),fenix: true);

  }
}