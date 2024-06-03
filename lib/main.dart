
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'app/app_pkg.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(systemNavigationBarColor: ColorConstants.backgroundColor, systemNavigationBarIconBrightness: Brightness.dark,
  // statusBarColor: Colors.transparent,statusBarIconBrightness: Brightness.light));
  await dotenv.load(fileName: ".env");
  await GetStorage.init();
  await DependencyInjection.init();
  runApp(
  const  ProviderScope(child: MyApp()),

  );
  configLoading();
  ErrorWidget.builder = (FlutterErrorDetails details) => Center(
    child: SafeArea(
      child: Container(
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amberAccent.shade400,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Text(details.exception.toString()),
      ),
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.custom
  // ..indicatorSize = 45.0
    ..radius = 10.0
  // ..progressColor = Colors.yellow
    ..backgroundColor = ColorConstants.secondaryColor
    ..indicatorColor = ColorConstants.primaryColor
    ..textColor = ColorConstants.primaryColor
  // ..maskColor = Colors.red
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}