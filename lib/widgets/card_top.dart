import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';
import 'purple_small_lable.dart';

class CardTop extends StatelessWidget {
  final String? title;
  const CardTop({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
        right: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PurpleSmallLable(title: title),
          Image.asset(
            threeDot,
            color: black.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
