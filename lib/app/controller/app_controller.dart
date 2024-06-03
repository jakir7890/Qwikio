

import 'package:get/get.dart';
import '../app_pkg.dart';

class AppController extends GetxController {
   AppController({required this.appProvider});
  final AppProvider appProvider;
  final selectedLanguage = Get.locale!.languageCode.obs;

  final authProvider = Get.find<AuthProvider>();
  final authRepo = Get.find<AuthRepository>();
   UserResponse user=UserResponse();
  //loader
  bool isCountryLoad = false;
  bool isHomeDataLoad = false;
  String deviceId='';
  @override
  void onInit()async {
    super.onInit();

    faceApiData();
  }


  void faceApiData() async {
    // await getCountryList();
    // await getHomeData();
    // getUser();
  }


}
