import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_pkg.dart';

//ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor =  ColorConstants.whiteColor,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 10,
    this.showTextOnly = false,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
    this.icon,
    this.buttonColor,
    this.showBorderOnly = false,
    this.borderColor,
    this.textUnderline = false, this.boxShadow,
  });

  final VoidCallback? onTap;
  final String text;
  final bool showTextOnly;
  final Color textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final double width;
  final double borderRadius;
  final bool showBorderOnly;
  final bool textUnderline;
  final BoxShadow? boxShadow;
  Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: (borderColor == null) ? null
            : Border.all(
                color: borderColor??Colors.transparent, width: 1.5,
                strokeAlign: BorderSide.strokeAlignInside),
        color: (showBorderOnly == false) ?  (showTextOnly == false)? (buttonColor == null) ? onTap==null? Colors.grey.shade500 : ColorConstants.primaryColor : buttonColor :null : null,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          boxShadow?? BoxShadow(
            color: ColorConstants.blackColor.withOpacity(0.10),
            offset: const Offset(-3, 3),
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius),
          child: SizedBox(
            width: width,
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: icon,
                  ),
                  if ((icon == null) == false) const SizedBox(width: 6,),
                  if (text.isEmpty == false)
                    Flexible(
                      child: FittedBox(
                        child: Text(text,
                            style: Get.textTheme.titleLarge!.copyWith(
                              decoration:textUnderline ? TextDecoration.underline : null,
                                color: onTap==null? ColorConstants.whiteColor : textColor,
                                fontSize: fontSize,
                                fontWeight: fontWeight)),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
