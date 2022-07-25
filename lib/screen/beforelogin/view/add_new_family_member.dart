import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vande_mission/screen/beforelogin/controller/add_new_family_member_controller.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class AddNewFamilyMember extends StatefulWidget {
  const AddNewFamilyMember({Key? key}) : super(key: key);

  @override
  State<AddNewFamilyMember> createState() => _AddNewFamilyMemberState();
}

class _AddNewFamilyMemberState extends State<AddNewFamilyMember> {
  final AddNewFamilyMemberController controller =
      Get.put(AddNewFamilyMemberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        foregroundColor: black,
      ),
      body: Obx(
        () => SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
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
                          controller: controller.firstNameController.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                          controller: controller.lastNameController.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                          controller: controller.fatherNameController.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                          controller: controller.motherNameController.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                            GestureDetector(
                              onTap: () => controller.onTapGenderMale(),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: controller.showGenderMale.isTrue
                                            ? blue
                                            : dropdownColor),
                                    color: controller.showGenderMale.isTrue
                                        ? white
                                        : dropdownColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: TextLabel(
                                    title: "male",
                                    color: controller.showGenderMale.isTrue
                                        ? blue
                                        : darkGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () => controller.onTapGenderFeMale(),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            controller.showGenderFeMale.isTrue
                                                ? blue
                                                : dropdownColor),
                                    color: controller.showGenderFeMale.isTrue
                                        ? white
                                        : dropdownColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: TextLabel(
                                    title: "female",
                                    color: controller.showGenderFeMale.isTrue
                                        ? blue
                                        : darkGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                            controller: controller.dobController.value,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                filled: true,
                                hintStyle: const TextStyle(color: grey),
                                hintText: "dob".tr,
                                fillColor: lightWhite,
                                suffixIcon: GestureDetector(
                                  onTap: () => controller.selectDOB(context),
                                  child: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                  ),
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
                          controller:
                              controller.aadhaarCardNumberController.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                        // GestureDetector(
                        //     onTap: () => controller.getImageFront(
                        //         ImageSource.gallery, context),
                        //     child: Container(
                        //       width: Constants.width(context),
                        //       height: 55,
                        //       decoration: BoxDecoration(
                        //           color: lightWhite,
                        //           borderRadius: BorderRadius.circular(15)),
                        //       child: Padding(
                        //         padding:
                        //             const EdgeInsets.symmetric(horizontal: 20),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Align(
                        //               alignment: Alignment.centerLeft,
                        //               child: Text(
                        //                 "tap_upload".tr,
                        //                 style: GoogleFonts.poppins(
                        //                     fontSize: 16,
                        //                     color: orange,
                        //                     fontWeight: FontWeight.w500),
                        //               ),
                        //             ),
                        //             Image.asset(upload)
                        //           ],
                        //         ),
                        //       ),
                        //     )),
                        const SizedBox(height: 15),
                        Obx(() => controller.aadharCardFront.value.isEmpty
                            ? GestureDetector(
                                onTap: () =>
                                    controller.bottomPickImage(context),
                                child: Container(
                                  width: Constants.width(context),
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: lightWhite,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                ))
                            : Container()),
                        const SizedBox(
                          height: 20,
                        ),
                        Obx(() => controller.aadharCardFront.value.isNotEmpty
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 14, top: 10, bottom: 10),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.file(
                                            File(controller
                                                .aadharCardFront.value),
                                            width: 70,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Positioned(
                                      // draw a red marble
                                      top: 0,
                                      right: 0.0,
                                      child: GestureDetector(
                                        onTap: () =>
                                            controller.onTapFrontCancel(),
                                        child: const Icon(Icons.cancel,
                                            size: 20.0, color: grey),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Container()),
                        SizedBox(
                          height: 15,
                        ),
                        const TextLabel(
                          title: "back_photo",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                        // GestureDetector(
                        //     onTap: () => controller.getImageBack(
                        //         ImageSource.gallery, context),
                        //     child: Container(
                        //       width: Constants.width(context),
                        //       height: 55,
                        //       decoration: BoxDecoration(
                        //           color: lightWhite,
                        //           borderRadius: BorderRadius.circular(15)),
                        //       child: Padding(
                        //         padding:
                        //             const EdgeInsets.symmetric(horizontal: 20),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Align(
                        //               alignment: Alignment.centerLeft,
                        //               child: Text(
                        //                 "tap_upload".tr,
                        //                 style: GoogleFonts.poppins(
                        //                     fontSize: 16,
                        //                     color: orange,
                        //                     fontWeight: FontWeight.w500),
                        //               ),
                        //             ),
                        //             Image.asset(upload)
                        //           ],
                        //         ),
                        //       ),
                        //     )),
                        Obx(() => controller.aadharCardBack.value.isEmpty
                            ? GestureDetector(
                                onTap: () =>
                                    controller.bottomPickImage(context),
                                child: Container(
                                  width: Constants.width(context),
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: lightWhite,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                ))
                            : Container()),
                        const SizedBox(
                          height: 20,
                        ),
                        Obx(() => controller.aadharCardBack.value.isNotEmpty
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 14, top: 10, bottom: 10),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.file(
                                            File(controller
                                                .aadharCardBack.value),
                                            width: 70,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Positioned(
                                      // draw a red marble
                                      top: 0,
                                      right: 0.0,
                                      child: GestureDetector(
                                        onTap: () =>
                                            controller.onTapBackCancel(),
                                        child: const Icon(Icons.cancel,
                                            size: 20.0, color: grey),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Container()),
                        SizedBox(
                          height: 15,
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
                  title: "Save",
                  color: orange,
                  onTap: () => controller.phoneBottomSheet(context),
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
