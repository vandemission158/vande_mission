import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/group/controller/group_controller.dart';
import 'package:vande_mission/screen/beforelogin/controller/register_new_family_controller.dart';
import 'package:vande_mission/widgets/custom_textfield.dart';

import '../../../../helper/app_color.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';
import '../../../../widgets/text_label.dart';

class GroupCreateScreen extends StatelessWidget {
  GroupCreateScreen({Key? key}) : super(key: key);

  final GroupController groupController = Get.put(GroupController());
  final RegisterFamilyController registerFamilyController = Get.put(RegisterFamilyController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            // leading: const Icon(
            //   Icons.arrow_back,
            //   color: black,
            // ),
            foregroundColor: black,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextLabel(
                    title: 'Create a  new group',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    color: white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "Group Name",
                              color: lightGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CustomTextField(
                              controller: groupController.groupNameController.value,
                              autofocus: false,
                              hintText: "Group Name",
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(top: 14),
                          //   child: TextLabel(
                          //     title: "Upload your Chapter PDF (Optional)",
                          //     color: lightGrey2,
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 10),
                          //   child: Container(
                          //     height: 50,
                          //     width: MediaQuery.of(context).size.width,
                          //     decoration: BoxDecoration(
                          //         color: lightWhite,
                          //         borderRadius: BorderRadius.circular(10)),
                          //     child: Padding(
                          //       padding:
                          //           const EdgeInsets.only(left: 12, right: 12),
                          //       child: Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: const [
                          //           TextLabel(
                          //             title: "Tap to upload",
                          //             color: vandeColor,
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.w700,
                          //           ),
                          //           Icon(Icons.file_upload_outlined)
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "About of group",
                              color: lightGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextField(
                              maxLines: 3,
                              controller: groupController.aboutGroupController.value,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                                  hintText: "Write Here".tr,
                                  fillColor: lightWhite),
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(top: 10),
                          //   child: TextLabel(
                          //     title: "Group Captain",
                          //     color: lightGrey,
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 10),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       color: dropdownColor,
                          //       borderRadius: BorderRadius.circular(15),
                          //     ),
                          //     child: const Padding(
                          //       padding: EdgeInsets.only(left: 10),
                          //       child: TextField(
                          //           decoration: InputDecoration(
                          //         border: InputBorder.none,
                          //         suffixIcon: Icon(Icons.filter_alt),
                          //         prefixIcon: Icon(Icons.search),
                          //         hintText: "Search",
                          //         hintStyle: TextStyle(
                          //             color: black,
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.w400),
                          //       )),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
                  child: Container(
                    color: white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Choose group type",
                            color: darkGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => groupController.onTapAddress(),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: groupController.category.value == "Address" ? white : dropdownColor,
                                      border: Border.all(
                                        color: groupController.category.value == "Address" ? blue : dropdownColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextLabel(
                                      title: "Address",
                                      color: groupController.category.value == "Address" ? blue : grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () => groupController.onTapCategory(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: groupController.category.value == "Category" ? blue : dropdownColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: groupController.category.value == "Category" ? white : dropdownColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: TextLabel(
                                      title: "Category",
                                      color: groupController.category.value == "Category" ? blue : grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "Country",
                            color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: registerFamilyController.countryTextController.value, onTap: () => registerFamilyController.countryBottomSheet(context), title: "select_country"),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "State",
                            color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: registerFamilyController.stateTextController.value, onTap: () => registerFamilyController.stateBottomSheet(context), title: "select_state"),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "District",
                            color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: registerFamilyController.districtTextController.value, onTap: () => registerFamilyController.districtBottomSheet(context), title: "select_district"),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "Village/City/Town",
                            color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: registerFamilyController.villageTextController.value, onTap: () => registerFamilyController.villageBottomSheet(context), title: "select_village"),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Society Name",
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: registerFamilyController.societyTextController.value, onTap: () => registerFamilyController.societyBottomSheet(context), title: "select_society"),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "Group Public or Private",
                            color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomDropDown(controller: groupController.groupTypeController.value, onTap: () => groupController.groupTypeBottomSheet(context), title: "Select Cast"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomButton(gradientLeft: blueLight, gradientRight: blueLight2, title: "Create", color: blue, onTap: () => {}),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
