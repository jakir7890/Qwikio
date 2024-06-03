import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_pkg.dart';


final divisionListProvider = FutureProvider<List<DivisionModel>?>((ref) async {
  final getProvider = ref.watch(appProvider);
  final res = await getProvider.getDivisions(ApiUrl.login);
  printLog(res.statusCode);
  printLog(res.body);
  if (res.statusCode == 200) {
    var result = divisionModelFromMap(res.body[AppConstants.kData]);
    return result;
  }
  return null;
});
final districtListProvider =
FutureProvider<List<DistrictModel>?>((ref) async {
  final getProvider = ref.watch(appProvider);
  final res = await getProvider.getDistricts(ApiUrl.login);
  printLog(res.statusCode);
  printLog(res.body);
  if (res.body[AppConstants.kSuccess] == true) {
    var result = districtModelFromMap(res.body[AppConstants.kData]);
    return result;
  }
  return null;
});

