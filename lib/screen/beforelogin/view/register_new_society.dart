import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/beforelogin/controller/register_new_family_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../widgets/all_dropdown.dart';
import '../../../widgets/custom_button.dart';

class RegisterNewSociety extends StatefulWidget {
  const RegisterNewSociety({Key? key}) : super(key: key);

  @override
  State<RegisterNewSociety> createState() => _RegisterNewSocietyState();
}

class _RegisterNewSocietyState extends State<RegisterNewSociety> {
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
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(
            title: "Register New Society",
            color: black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        title: "Religion",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const AllDropDown(
                        selectTitle: "select_religion",
                        searchTitle: "search_religion",
                        list: ["jhdjfh", "hhjhjkh", "kushdh"],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextLabel(
                        title: "Society Name",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            hintStyle: const TextStyle(color: grey),
                            hintText: "Society Name".tr,
                            fillColor: lightWhite),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextLabel(
                        title: "Chairman",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            hintStyle: const TextStyle(color: grey),
                            hintText: "Chairman".tr,
                            fillColor: lightWhite),
                      ),
                      const SizedBox(
                        height: 10,
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
