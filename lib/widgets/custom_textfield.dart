import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../helper/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.focusNode, this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus!,
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
          fillColor: lightWhite),
    );
  }
}
