import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../app_pkg.dart';

class CustomTextEditFormField extends StatelessWidget {
  final String? hintText;
  final bool? isBorder;
  final bool isIcon;
  final int? maxLine;
  final IconData? icon;
  final double? borderRadius;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool isFocusedBorder;
  final GestureTapCallback? onTap;
  final VoidCallback? suffixOnTap;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextInputType? keyboardType;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool? passwordVisible;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode? validateMode;

  const CustomTextEditFormField({
    super.key,
    this.hintText,
    this.isBorder = false,
    this.controller,
    this.maxLine,
    this.borderRadius,
    this.isIcon = false,
    this.icon,
    this.readOnly,
    this.onTap,
    this.isFocusedBorder=true,
    this.suffixOnTap,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.backgroundColor,
    this.validator,
    this.passwordVisible,
    this.inputFormatters,
    TextStyle? hintStyle,
    this.initialValue,
    this.onChanged,
    this.validateMode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: validateMode ?? AutovalidateMode.onUserInteraction,
      readOnly: readOnly ?? false,
      // obscuringCharacter: ".",
      onTap: onTap,
      maxLines: maxLine ?? 1,
      keyboardType: keyboardType,
      textAlign: TextAlign.left,
      initialValue: initialValue,
      style: Get.textTheme.bodySmall,
      onChanged: (String? value) {
        if (value != null) {
          onChanged!(value);
        }
      },
      validator: validator,
      inputFormatters: inputFormatters,
      obscureText: passwordVisible ?? false,
      decoration: InputDecoration(
        filled: true,
        //<-- SEE HERE
        fillColor: backgroundColor ?? ColorConstants.greyPurpleColor,
        hintTextDirection: TextDirection.ltr,
        contentPadding: EdgeInsets.only(
          left: 14,
          right: 14,
          top: maxLine != null ? 10 : 0,
          bottom: maxLine != null ? 10 : 5,
        ),
        hintText: hintText,
        hintStyle: hintTextStyle,
        errorMaxLines: 2,
        enabled: true,
        enabledBorder:OutlineInputBorder(
          borderRadius:
          const BorderRadius.all(Radius.circular(Dimens.space8)),
          borderSide: BorderSide(
            color: ColorConstants.greyPurpleColor.withOpacity(0.15),
            width: 1.2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius:
          const BorderRadius.all(Radius.circular(Dimens.space8)),
          borderSide: BorderSide(
            color: ColorConstants.greyPurpleColor.withOpacity(0.15),
            width: 1.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
          const BorderRadius.all(Radius.circular(Dimens.space8)),
          borderSide: BorderSide(
            color: isFocusedBorder? ColorConstants.greyPurpleColor.withOpacity(0.4):Colors.transparent,
            width: 1.2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.withOpacity(0.60),
            width: 1.2,
          ),
        ),
        suffixIcon: suffixIcon != null
            ? InkWell(
          onTap:suffixOnTap,
          child: Padding(
          padding: const EdgeInsets.all(Dimens.space12),
          child: SvgPicture.asset(
              suffixIcon.toString(),
              height: 10,
              width: 10,
            colorFilter:  ColorFilter.mode(Colors.grey.shade400, BlendMode.srcIn),
          ),
        ),
            )
            : null,
        prefixIcon: prefixIcon != null
            ? Padding(
          padding: const EdgeInsets.all(Dimens.space12),
          child: SvgPicture.asset(
            prefixIcon.toString(),
            height: 12,
            width: 12,

          ),
        )
            :  null,
      ),
    );
  }
}
