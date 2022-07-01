import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/small_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/constant.dart';

class AddFamilyMember extends StatelessWidget {
  const AddFamilyMember({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const TextLabel(
              title: 'let_add_family_members',
              fontSize: 26,
              color: darkGrey,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: lightWhite),
              height: 125,
              width: Constants.width(context),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextLabel(
                      title: 'family_identity_number',
                      fontSize: 22,
                      color: darkGrey,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextLabel(
                      title: 'xxx-xxxx-xxxxx',
                      fontSize: 22,
                      color: blue,
                      fontWeight: FontWeight.w500,
                    ),
                    Row(
                      children: [
                        Image.asset(shapI),
                        const SizedBox(
                          width: 5,
                        ),
                        const TextLabel(
                          title: 'this_will_be',
                          fontSize: 10,
                          color: lightGrey,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(chatVector),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextLabel(
                    title: "start_add",
                    color: darkGrey,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    textAlign: TextAlign.center,
                    title: "once_you_add",
                    color: lightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SmallButton(
                      title: "add_member",
                      color: orange,
                      onTap: () {
                        print("Hello");
                        Get.to(HomePage());
                      })
                ],
              ),
            ),
          ],
        ),
      ),
      color: white,
    );
  }
}
