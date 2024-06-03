import 'package:flutter/material.dart';

class ColorConstants {
  static const Color primaryColor =  Color(0xFF149cfc);
  static const Color secondaryColor = Color(0xFF8a8a8a);
  static const Color dotPrimary = Color(0xFF4885b5);
  static const Color dotSecondary = Color(0xFFeaeaea);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFF8FFE8);
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteRedColor = Color(0xFFFFB3B8);
  static const Color greyPurpleColor = Color(0xFF7D9BB8);
  static const Color darkGreyColor = Color(0xFF3F3F3F);
  static const Color lightBlueColor = Color(0xFFA0D2FF);
  static const Color blueColor = Color(0xFF0C8CE9);
  static const Color greenColor = Color(0xFF04C717);

  static const LinearGradient shimmerDarkGradient =  LinearGradient(colors: [Color(0xFF3A3A3A), Color(0xFF4A4A4A), Color(0xFF3A3A3A),],
    stops: [0.1, 0.3, 0.4,], begin: Alignment(-1.0, -0.3), end: Alignment(1.0, 0.3), tileMode: TileMode.clamp,);
  static const Color shimmerDarkBgColor = Color(0xFF4A4A4A);

  static const LinearGradient shimmerLightGradient =  LinearGradient(colors: [Color(0xFFeaeaf4), Color(0xFFF4F4F4), Color(0xFFeaeaf4),],
    stops: [0.1, 0.3, 0.4,], begin: Alignment(-1.0, -0.3), end: Alignment(1.0, 0.3), tileMode: TileMode.clamp,);
  static const Color shimmerLightBgColor = Color(0xFFf6f7f8);
}