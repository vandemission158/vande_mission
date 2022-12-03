import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import 'text_label.dart';

class PurpleSmallLable extends StatelessWidget {
  final String? title;
  const PurpleSmallLable({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [linearPurple, linearpink]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
        child: TextLabel(
          title: title,
          fontSize: 10,
          color: white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
