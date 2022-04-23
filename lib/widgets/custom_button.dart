import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/constant.dart';

import '../helper/app_color.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Function? onTap;
  final Color? color;
  const CustomButton({Key? key, this.title, this.onTap, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: Constants.width(context),
      height: 55,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          title!.tr,
          style: GoogleFonts.poppins(
              fontSize: 16, color: white, fontWeight: FontWeight.w500),
        ),
      ),
    ));
  }
}
