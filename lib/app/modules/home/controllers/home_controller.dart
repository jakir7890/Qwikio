import 'package:get/get.dart';

import '../../../app_pkg.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});

  HomeRepository homeRepository;
  final appController = Get.find<AppController>();

}
