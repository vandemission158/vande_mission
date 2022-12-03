import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/image_constant.dart';

import '../helper/app_color.dart';

class CustomDropDown extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final Function? onTap;
  final Color? color;
  const CustomDropDown({
    Key? key,
    this.title,
    this.controller,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap!(),
      child: IgnorePointer(
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    readOnly: true,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        filled: true,
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: darkGrey,
                        ),
                        hintText: title!.tr,
                        fillColor: color),
                  ),
                ),
                Image.asset(downBlack)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
