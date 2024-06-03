
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../app_pkg.dart';

class CommonWidget {
  static AppBar appBar(
      BuildContext context, String title, IconData? backIcon, Color color,
      {void Function()? callback}) {
    return AppBar(
      leading: backIcon == null
          ? null
          : IconButton(
        icon: Icon(backIcon, color: color),
        onPressed: () {
          if (callback != null) {
            callback();
          } else {
            Navigator.pop(context);
          }
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: color, fontFamily: 'Rubik'),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
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
  static BoxDecoration customCircularDecoration(
      BuildContext context, Color? color, double value) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(value),
    );
  }
}


TextStyle hintTextStyle = Get.theme.textTheme.bodySmall!.copyWith(
    fontWeight: FontWeight.normal, fontSize: 12, color: ColorConstants.greyPurpleColor,
);
TextStyle inputTextStyle = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
Widget titleTextWithCharacter({required String text, String stareCar = ""}) {
  return Text.rich(
    TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: text,
          style: Get.textTheme.labelLarge!,
        ),
        TextSpan(
          text: " $stareCar",
          style: Get.textTheme.labelLarge!.copyWith(color: Colors.red),
        ),
      ],
    ),
  );
}


Widget createBoxShape({
  required Widget child,
  Color color = Colors.white,
  double padding = 10,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: padding),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          blurRadius: 5,
          color: Colors.white.withOpacity(0.25),
          offset: const Offset(0, 0),
        )
      ],
    ),
    child: child,
  );
}