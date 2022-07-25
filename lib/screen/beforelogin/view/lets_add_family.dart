import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/small_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/constant.dart';
import '../controller/lets_add_family_controller.dart';

class LetsAddFamily extends StatelessWidget {
  LetsAddFamily({Key? key}) : super(key: key);

  final LetsAddFamilyController controller = Get.put(LetsAddFamilyController());
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      color: white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
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
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [blueLight, blueLight2]),
                    borderRadius: BorderRadius.circular(15),
                    color: lightWhite),
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
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextLabel(
                        title: 'xxx-xxxx-xxxxx',
                        fontSize: 22,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            shapI,
                            color: white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const TextLabel(
                            title: 'this_will_be',
                            fontSize: 10,
                            color: white,
                            fontWeight: FontWeight.w400,
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
                      onTap: () => controller.onTapAdd(),
                      title: "add_member",
                      gradientLeft: orangeLight2,
                      gradientRight: orangeLight1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
