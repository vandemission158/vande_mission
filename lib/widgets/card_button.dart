import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import 'text_label.dart';

class CardButton extends StatelessWidget {
  final String? title;
  const CardButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: Constants.width(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: vandeColor),
      child: Center(
        child: TextLabel(
          title: title!,
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
