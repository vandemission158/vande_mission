import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(redHeart),
                    const SizedBox(
                      width: 10,
                    ),
                    const TextLabel(
                      title: "122",
                      fontSize: 17,
                      color: black,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Image.asset(redComment),
                    const SizedBox(
                      width: 10,
                    ),
                    const TextLabel(
                      title: "10K",
                      fontSize: 17,
                      color: black,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(share)
          ],
        ),
      ),
    );
  }
}
