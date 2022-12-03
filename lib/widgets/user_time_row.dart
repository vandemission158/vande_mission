import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class UserTimeRow extends StatelessWidget {
  const UserTimeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Image.asset(blogUser),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextLabel(
                  title: "Farita Smith",
                  fontSize: 17,
                  color: black,
                  fontWeight: FontWeight.w700,
                ),
                TextLabel(
                  title: "@SmithFa",
                  fontSize: 15,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        TextLabel(
          title: "05 March 2022 5:00AM",
          fontSize: 12,
          color: black.withOpacity(0.4),
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
