import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../helper/app_color.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl, errorImage;
  final double? height,
      width,
      errorHeight,
      errorWidth,
      indicatorHeight,
      indicatorWidth,
      indicatorStrokeWidth;
  final BoxFit? boxFit;
  final Color? color;

  const NetworkImageWidget({
    Key? key,
    this.imageUrl,
    this.height,
    this.boxFit,
    this.errorImage,
    this.width,
    this.indicatorHeight,
    this.indicatorWidth,
    this.indicatorStrokeWidth,
    this.errorHeight,
    this.errorWidth,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        //memCacheWidth: (Get.width * 0.6).toInt(),
        height: height,
        width: width,
        fit: boxFit,
        imageUrl: imageUrl!,
        color: color,
        placeholder: (context, url) => SizedBox(
              height: errorHeight,
              width: errorWidth,
              child: Center(
                  child: SizedBox(
                height: indicatorHeight!,
                width: indicatorWidth!,
                child: const CircularProgressIndicator(
                  color: userPlaceholderColor,
                  strokeWidth: 3,
                ),
              )),
            ),
        errorWidget: (context, url, error) => Center(
                child: Image.asset(
              errorImage!,
              height: errorHeight,
              width: errorWidth,
              fit: boxFit,
            )));
  }
}
