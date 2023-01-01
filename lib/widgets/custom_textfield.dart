import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextEditingController? controller;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.focusNode,
    this.autofocus,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(fontSize: fontSize, fontWeight: fontWeight),
      autofocus: autofocus!,
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
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
          hintStyle: const TextStyle(color: grey),
          hintText: hintText!.tr,
          fillColor: color),
    );
  }
}
