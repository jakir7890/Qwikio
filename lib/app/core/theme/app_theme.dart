
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_pkg.dart';

class AppTheme {
  /// Light Theme
  ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: ColorConstants.primaryColor,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.light,
      onSurface: Colors.white,
      surface: ColorConstants.primaryColor,
      primary: Colors.black,
      secondary: Colors.red,),

    scaffoldBackgroundColor: ColorConstants.backgroundColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: ColorConstants.primaryColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: ColorConstants.primaryColor,
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color:ColorConstants.whiteColor),
      color:ColorConstants.primaryColor, foregroundColor: ColorConstants.primaryColor,),
    brightness: Brightness.light,
 /*   primaryTextTheme: TextTheme(
      bodyMedium: AppTextStyleLight.displayMedium,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.displayLarge,
      ),
      displayMedium: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.displayMedium,
      ),
      displaySmall: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.displaySmall,
      ),
      headlineMedium: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.headlineMedium,
      ),
      headlineSmall: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.headlineSmall,
      ),
      titleLarge: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.titleLarge,
      ),
      titleMedium: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.titleMedium,
      ),
      titleSmall: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.titleSmall,
      ),
      bodyLarge: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.bodyLarge,
      ),
      bodyMedium: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.bodyMedium,
      ),
      bodySmall: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.bodySmall,
      ),
      labelLarge: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.labelLarge,
      ),
      labelMedium: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.labelMedium,
      ),
      labelSmall: GoogleFonts.rubik(
        textStyle: AppTextStyleLight.labelSmall,
      ),
    ),*/
    textTheme: TextTheme(

      bodyLarge: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w400,color: ColorConstants.secondaryColor),
      bodyMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),
      bodySmall: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),

      headlineLarge: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),
      headlineMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),
      headlineSmall: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),

      titleLarge: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w400,color: ColorConstants.secondaryColor),
      titleMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.secondaryColor),
      titleSmall: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstants.secondaryColor),


    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 25.0),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ),

    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: ColorConstants.primaryColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorConstants.primaryColor,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: ColorConstants.primaryColor,
    ),
  );

  /// Dark Theme
  ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    brightness: Brightness.dark,
    // backgroundColor: Colors.black,
    primaryColor: Colors.amber,
    cardColor: Colors.black,
    cardTheme: const CardTheme(color: Colors.red),
    textTheme: TextTheme(

      bodyLarge: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w400,color: ColorConstants.whiteColor),
      bodyMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),
      bodySmall: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),

      headlineLarge: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),
      headlineMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),
      headlineSmall: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),

      titleLarge: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w400,color: ColorConstants.whiteColor),
      titleMedium: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstants.whiteColor),
      titleSmall: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstants.whiteColor),



    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 25.0),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey.shade800,
    ),
  );
}
