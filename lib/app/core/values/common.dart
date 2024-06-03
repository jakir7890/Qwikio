import 'package:flutter/foundation.dart';

const kLOGTAG = "[::E To B-]";
const kLOGENABLE = true;
printLog(dynamic data) {
  if (kLOGENABLE) {
    if (kDebugMode) {
      print("$kLOGTAG: ${data.toString()}");
    }
  }
}
class CommonConstants {
  static const String test = 'test';
  static const String takaSymbol = '৳';
  static const num testNum = 1;
  static const double largeText = 40.0;
  static const double normalText = 22.0;
  static const double smallText = 16.0;
}