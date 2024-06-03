import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../app_pkg.dart';

class CustomCachedNetworkImageWidget extends StatelessWidget {
  const CustomCachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.boxFit = BoxFit.cover,
    this.radius = 8,
    this.isCircle=true,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final double radius;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return imageUrl != null? ClipRRect(
      borderRadius:isCircle? BorderRadius.circular(radius):BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width ?? Get.width,
        height: height ?? Get.width,
        fit: boxFit,
        imageBuilder: (context, imageProvider) => Container(
          width: width ?? Get.width,
          height: height ?? Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              // colorFilter:
              // const  ColorFilter.mode(Colors.red, BlendMode.colorBurn)
            ),
          ),
        ),
        placeholder: (context, url) => Container(
          width: width ?? Get.width,
          height: height ?? Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade100,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(radius),
              ),),),),
        errorWidget: (context, url, error) => isCircle? ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.asset(AssetsConstants.defoliateImageJpg,height: height?? Get.width ,width: width?? Get.width,fit: boxFit),
        ):
        Image.asset(AssetsConstants.defoliateImageJpg,height: height ?? Get.width,width: width?? Get.width,fit: boxFit),
      ),
    ):ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(AssetsConstants.defoliateImageJpg,height: height ?? Get.width ,width: width?? Get.width,fit: boxFit),
    );
  }
}
