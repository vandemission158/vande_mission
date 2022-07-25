import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/beforelogin/controller/register_new_family_controller.dart';
import 'package:vande_mission/widgets/all_dropdown.dart';
import 'package:vande_mission/widgets/custom_dropdown.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';

class RegisterNewFamily extends StatefulWidget {
  const RegisterNewFamily({Key? key}) : super(key: key);

  @override
  State<RegisterNewFamily> createState() => _RegisterFamilyState();
}

class _RegisterFamilyState extends State<RegisterNewFamily> {
  final RegisterFamilyController controller =
      Get.put(RegisterFamilyController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: white,
            foregroundColor: black,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "register_new_family",
                            color: black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(height: 15),
                          const TextLabel(
                            title: "enter_hometown_add",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: black,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "country",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                            controller: controller.countryTextController.value,
                            onTap: () => controller.countryBottomSheet(context),
                            title: "select_country",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "state",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                            controller: controller.stateTextController.value,
                            onTap: () => controller.stateBottomSheet(context),
                            title: "select_state",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "district",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                            controller: controller.districtTextController.value,
                            onTap: () =>
                                controller.districtBottomSheet(context),
                            title: "select_district",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "village_city",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                              controller:
                                  controller.villageTextController.value,
                              onTap: () =>
                                  controller.villageBottomSheet(context),
                              title: "select_village"),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "society_name",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                            controller: controller.societyTextController.value,
                            onTap: () => controller.societyBottomSheet(context),
                            title: controller
                                    .societyTextController.value.text.isEmpty
                                ? "select_society"
                                : controller
                                    .addSocietyTextController.value.text,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          controller.showSocityTextField.value
                              ? Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        autofocus: true,
                                        //focusNode: controller.focusNode,
                                        controller: controller
                                            .addSocietyTextController.value,
                                        hintText: "Enter Society Name",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.onTapAddSociety();
                                        },
                                        child: const TextLabel(
                                          title: 'Save Society',
                                          color: orange,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Image.asset(information),
                          //     const SizedBox(
                          //       width: 10,
                          //     ),
                          //     const Expanded(
                          //       child: TextLabel(
                          //         title: "if_the_society",
                          //         fontSize: 12,
                          //         color: grey,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(
                          //   height: 15,
                          // ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       controller.onTapNewSociety();
                          //     },
                          //     child: const TextLabel(
                          //       title: 'add_new_society',
                          //       color: orange,
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w500,
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "what_cast",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomDropDown(
                              controller: controller.casteTextController.value,
                              onTap: () => controller.casteBottomSheet(context),
                              title: "Select Cast"),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextLabel(
                                      title: "area",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: grey,
                                    ),
                                    CustomTextField(
                                      controller:
                                          controller.areaTextController.value,
                                      autofocus: false,
                                      hintText: "area",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextLabel(
                                      title: "pin_code",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: grey,
                                    ),
                                    CustomTextField(
                                      controller: controller
                                          .pincodeTextController.value,
                                      autofocus: false,
                                      hintText: "pin_code",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextLabel(
                            title: "house_number",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                          CustomTextField(
                            controller:
                                controller.houseNumberTextController.value,
                            autofocus: false,
                            hintText: "house_number",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    gradientLeft: orangeLight2,
                    gradientRight: orangeLight1,
                    title: "next",
                    color: orange,
                    onTap: () => controller.onTapNext(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: white,
        ),
      ),
    );
  }
}
