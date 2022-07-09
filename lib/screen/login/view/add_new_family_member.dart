import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/login/controller/register_new_family_controller.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';

class AddNewFamilyMember extends StatefulWidget {
  AddNewFamilyMember({Key? key}) : super(key: key);

  @override
  State<AddNewFamilyMember> createState() => _AddNewFamilyMemberState();
}

class _AddNewFamilyMemberState extends State<AddNewFamilyMember> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextLabel(
                  title: "add_new_family",
                  color: black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                const TextLabel(
                  title: "first_name",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: grey),
                      hintText: "first_name".tr,
                      fillColor: lightWhite),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextLabel(
                  title: "last_name",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: grey),
                      hintText: "last_name".tr,
                      fillColor: lightWhite),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextLabel(
                  title: "father_name",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: grey),
                      hintText: "father_name".tr,
                      fillColor: lightWhite),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextLabel(
                  title: "mother_name",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: grey),
                      hintText: "mother_name".tr,
                      fillColor: lightWhite),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextLabel(
                  title: "gender",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: dropdownColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextLabel(
                          title: "male",
                          color: darkGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: dropdownColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextLabel(
                          title: "female",
                          color: darkGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextLabel(
                  title: "dob",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: grey),
                        hintText: "dob".tr,
                        fillColor: lightWhite,
                        suffixIcon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ))),
                const SizedBox(
                  height: 10,
                ),
                const TextLabel(
                  title: "aadhar_card_details",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: darkGrey,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextLabel(
                  title: "aadhar_number",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: grey),
                      hintText: "aadhar_number".tr,
                      fillColor: lightWhite),
                ),
                const SizedBox(height: 10),
                const TextLabel(
                  title: "front_photo",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                GestureDetector(
                    child: Container(
                  width: Constants.width(context),
                  height: 55,
                  decoration: BoxDecoration(
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "tap_upload".tr,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: orange,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Image.asset(upload)
                      ],
                    ),
                  ),
                )),
                const SizedBox(height: 10),
                const TextLabel(
                  title: "back_photo",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                GestureDetector(
                    child: Container(
                  width: Constants.width(context),
                  height: 55,
                  decoration: BoxDecoration(
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "tap_upload".tr,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: orange,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Image.asset(upload)
                      ],
                    ),
                  ),
                )),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  gradientLeft: orangeLight2,
                  gradientRight: orangeLight1,
                  title: "next",
                  color: orange,
                  onTap: () => controller.onTapNext(),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: white,
    );
  }
}
