
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../app_pkg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle;
  final bool showBackButton;
  final Function()? onBackPress;
  final SystemUiOverlayStyle? systemOverlayStyle;
  const CustomAppBar({
    super.key,
    this.title,
    this.centerTitle = true,
    this.showBackButton = false,
    this.systemOverlayStyle,
    this.onBackPress,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    bool isRouteTreeEmpty = Navigator.of(context).canPop();
    return AppBar(
      title: const Text('SplashView'),
      systemOverlayStyle: systemOverlayStyle,
      leading: showBackButton && isRouteTreeEmpty
          ? FittedBox(
        fit: BoxFit.scaleDown,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onBackPress?? () => Get.back(),
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 20,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: ColorConstants.whiteColor,
              ),
            ),
          ),
        ),
      )
          : const SizedBox.shrink(),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )),
    );
  }
}