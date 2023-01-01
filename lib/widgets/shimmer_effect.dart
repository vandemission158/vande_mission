import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerEffect extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  const ShimmerEffect(this.width, this.height, this.borderRadius, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100);
  }
}
