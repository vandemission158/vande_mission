import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/login/controller/register_family_controller.dart';
import 'package:vande_mission/widgets/all_dropdown.dart';
import 'package:vande_mission/widgets/main_widget.dart';
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

  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const AllDropDown(
                        selectTitle: "select_country",
                        searchTitle: "Search country",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
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
                      const AllDropDown(
                        selectTitle: "select_state",
                        searchTitle: "search_state",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
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
                      const AllDropDown(
                        selectTitle: "select_district",
                        searchTitle: "search_district",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
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
                      const AllDropDown(
                        selectTitle: "select_village",
                        searchTitle: "search_village",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextLabel(
                        title: "society_name",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const AllDropDown(
                        selectTitle: "search_society",
                        searchTitle: "search_society",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(information),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: TextLabel(
                              title: "if_the_society",
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            controller.onTapNewSociety();
                          },
                          child: const TextLabel(
                            title: 'add_new_society',
                            color: orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextLabel(
                        title: "what_cast",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const CustomTextField(
                        hintText: "what_cast",
                      ),
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
                              children: const [
                                TextLabel(
                                  title: "area",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                ),
                                CustomTextField(
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
                              children: const [
                                TextLabel(
                                  title: "pin_code",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                ),
                                CustomTextField(
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
                      const CustomTextField(
                        hintText: "house_number",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextLabel(
                        title: "add_hometown_add",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const CustomTextField(
                        hintText: "add_hometown_add",
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
    );
  }
}
