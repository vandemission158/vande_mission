import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../controller/register_new_family_controller.dart';

class Demofile extends StatelessWidget {
  Demofile({Key? key}) : super(key: key);
  final RegisterFamilyController controller =
      Get.put(RegisterFamilyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          child: Center(
            child: Obx(
              () => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                     controller: controller.scrollController,
                      itemCount: controller.tempList.length,
                      itemBuilder: (context, index) => index <
                              controller.tempList.length
                          ? TextLabel(
                              title: controller.tempList[index].name.toString(),
                              fontSize: 16,
                              color: darkGrey,
                              fontWeight: FontWeight.w400,
                            )
                          : const Center(child: CircularProgressIndicator())),
            ),
          ),
        ),
      ),
    );
  }
}
