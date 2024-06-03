import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../app_pkg.dart';

final homeRepoProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(homeProvider: Get.find());
});

class HomeRepository {
  HomeRepository({required this.homeProvider});
  final HomeProvider homeProvider;
}
