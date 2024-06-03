import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../app_pkg.dart';

final appProvider = Provider<AppProvider>((ref) {
  return AppProvider();
});

class AppProvider extends BaseProvider {
  final getConnect=Get.find<GetConnect>();
  //e2b
  Future<Response> getDivisions(String path) async{
    return await getConnect.get(path);
  }

  Future<Response> getDistricts(String path) async{
    return await getConnect.get(path);
  }

}