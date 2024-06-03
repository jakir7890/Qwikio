

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../app_pkg.dart';

class AppHelper{
  AppHelper._();

  static Future<String?> datePickerShow([String? dateFormate]) async {
    DateTime? pickedDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              datePickerTheme: DatePickerThemeData(
                headerBackgroundColor:Get.theme.primaryColor,
                headerForegroundColor: Colors.white,
                backgroundColor: Colors.white,
              ),
              colorScheme: ColorScheme.light(
                primary:Get.theme.primaryColor, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSecondary: Get.theme.primaryColor, // <-- SEE HERE
                secondary: Get.theme.primaryColor, // <-- SEE HERE
              ),
              textButtonTheme: const TextButtonThemeData(
                // style: TextButton.styleFrom(
                //   primary: Colors.w, // button text color
                // ),
              ),
            ),
            child: child!,
          );
        },
        context: Get.overlayContext!,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      String formattedDate =
      DateFormat(dateFormate ?? 'yyyy-MM-dd').format(pickedDate);

      return formattedDate;
    } else {}
    return null;
  }

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static void snackBarForError({String? titleText, required String bodyText, double? topMargin,}) {
    Get.snackbar("", "",
        titleText: const SizedBox.shrink(),
        messageText: Text(
          bodyText,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        snackPosition: SnackPosition.TOP,
        maxWidth: Get.width * 0.7,
        padding: const EdgeInsets.only(bottom: 15, left: 12, right: 10, top: 5),
        margin: EdgeInsets.only(
            top: 25, left: Get.width * 0.05, right: Get.width * 0.05),
        borderRadius: 4,
        backgroundColor: Colors.red.withOpacity(0.9),
        colorText: Colors.white);
  }

  static void snackBarForSuccess({String? titleText, required String bodyText, double? topMargin,}) {
    Get.snackbar("", "",
        titleText: const SizedBox.shrink(),
        messageText: Text(
          bodyText,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        snackPosition: SnackPosition.TOP,
        maxWidth: Get.width * 0.7,
        padding: const EdgeInsets.only(bottom: 15, left: 12, right: 10, top: 5),
        margin: EdgeInsets.only(
            top: 25, left: Get.width * 0.05, right: Get.width * 0.05),
        borderRadius: 4,
        backgroundColor: ColorConstants.whiteColor.withOpacity(0.9),
        colorText: Colors.white);
  }

  static void showSnackBarBuild({required BuildContext context, required String message}) {
    final snackBar = SnackBar(
      backgroundColor: Get.theme.primaryColor,
      content: Text(
        message,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Future<void> defaultSystemChrome() async{
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static SystemUiOverlayStyle  homePageUiOverlayStyle(){
    return const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light,statusBarColor: ColorConstants.primaryColor,
        systemNavigationBarColor: ColorConstants.whiteColor,systemNavigationBarIconBrightness: Brightness.dark);
  }
  static void toast(String? error) async {
    await Fluttertoast.showToast(
        msg: error??"",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static String? removePartFromUrl(String? url,) {
    if(url==null){return null;}
    String partToRemove = "https://noexceptions.tech/storage/";
    if (url.startsWith(partToRemove)) {
    return url.replaceFirst(partToRemove, "");}
    return url;
  }
  static BoxDecoration customCircularDecoration(BuildContext context, Color? color, double value) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(value),
    );
  }

  static Future customDialog({Widget? bodyWidget, Widget? icon,double radius = 50, String? titleText, double? width,double? height, String? bodyText,bool onWillPop = true , String? canselButtonText,String? confirmButtonText, Function()? onCansel ,Function()? onConfirm}){
    return  Get.dialog(barrierDismissible: false, Dialog(backgroundColor: ColorConstants.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0, child:WillPopScope(onWillPop: () async => onWillPop,
          child: SingleChildScrollView(
            child: SizedBox(width: width??350,height: height,
              child: Stack(alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [

                  Padding( padding: EdgeInsets.only(left: 16,right: 16,bottom: 16, top: icon == null? 20: 55),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      if(titleText != null)
                      Padding(padding: const EdgeInsets.only(bottom: 8), child: Text(titleText ,textAlign: TextAlign.center, style: Get.textTheme.titleMedium!.copyWith(color: ColorConstants.blackColor,fontSize: 22,fontWeight: FontWeight.w700),),),
                      if(bodyText != null)
                      Text(bodyText ,textAlign: TextAlign.center, style: Get.textTheme.titleMedium!.copyWith(color: ColorConstants.blackColor,fontSize: 18,fontWeight: FontWeight.w400),),
                      bodyWidget??const SizedBox.shrink(),
                      if(bodyWidget == null)
                      Dimens.spaceH16,
                      Row(mainAxisSize: MainAxisSize.min, children: [
                        CustomButton(onTap: onCansel?? ()=>Get.back(), text: canselButtonText?? "cansel",height: 40,width: 110,borderRadius: 8,showBorderOnly: true,borderColor: ColorConstants.primaryColor,buttonColor: Colors.transparent,textColor: ColorConstants.primaryColor),
                        Dimens.spaceW8,
                        CustomButton(onTap: onConfirm?? ()=>Get.back(), text: confirmButtonText?? "confirm",height: 40,width: 110,borderRadius: 8)
                      ],)],),),

                  Positioned(top: 10,right: 10, child: CircleAvatar(
                    radius: 12,backgroundColor: ColorConstants.primaryColor.withOpacity(0.1),
                    child: InkWell(onTap: () => Get.back(),borderRadius: BorderRadius.circular(50), child: const Icon(Icons.close_rounded,size: 18,color: ColorConstants.greyPurpleColor,)),
                  )),

                  if(icon != null)
                   Positioned(top: -radius, child: CircleAvatar(radius: radius,backgroundColor: ColorConstants.whiteColor,
                    child: Padding(padding: const EdgeInsets.all(4), child: icon ),)),

                ],
              ),
            ),
          ),
        )
    ));
  }

  }