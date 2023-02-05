import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/screen/afterlogin/job/controller/job_controller.dart';
import 'package:vande_mission/screen/afterlogin/job/view/job_create_second_screen.dart';
import 'package:vande_mission/widgets/custom_stepper.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../../helper/image_constant.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../controller/componet_screen_controller.dart';

class JobCreateFirstScreen extends StatelessWidget {
  JobCreateFirstScreen({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());
  final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());
  final JobController jobController = Get.put(JobController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              CustomeStepper(
                title: "Create a new Job",
                stepperSubTitle1: "",
                stepperSubTitle2: "",
                stepperSubTitle3: "",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: dropdownColor, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLabel(
                          title: "Step 1",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Job Title",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const CustomTextField(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          hintText: "Enter Job Title",
                          autofocus: false,
                          color: white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Job Category",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const CustomDropDown(
                          title: "Select Job Category",
                          color: white,
                          // onTap: () => controller.businessTypeBottom(context),
                          // controller: controller.businessTypeTextController.value,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Job Type",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const CustomDropDown(
                          title: "Select Job Type",
                          color: white,
                          // onTap: () => controller.businessTypeBottom(context),
                          // controller: controller.businessTypeTextController.value,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Job Education",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset(search),
                              ),
                              const Expanded(
                                child: CustomTextField(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  hintText: "Search",
                                  autofocus: false,
                                  color: white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Job Experience",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const CustomDropDown(
                          title: "Select Job Experience",
                          color: white,
                          // onTap: () => controller.businessTypeBottom(context),
                          // controller: controller.businessTypeTextController.value,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Skills",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset(search),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  hintText: "Search skills",
                                  autofocus: false,
                                  color: white,
                                  controller: stepperController.skill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: InkWell(
                                  onTap: () {
                                    stepperController.allChips.add(ChipData(id: DateTime.now().toString(), name: stepperController.skill.text));
                                    // reset the TextField
                                    stepperController.skill.text = '';
                                  },
                                  child: const TextLabel(
                                    title: "Add",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: orange,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Skill Added",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Wrap(
                            spacing: 10,
                            children: stepperController.allChips
                                .map((chip) => Chip(
                                      backgroundColor: dropdownColor,
                                      shape: RoundedRectangleBorder(side: const BorderSide(color: blue), borderRadius: BorderRadius.circular(10)),
                                      key: ValueKey(chip.id),
                                      label: Text(
                                        chip.name,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: blue,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                                      deleteIcon: Image.asset(
                                        close,
                                        height: 12,
                                        width: 12,
                                        fit: BoxFit.contain,
                                        color: black.withOpacity(0.5),
                                      ),
                                      onDeleted: () {
                                        stepperController.deleteChip(chip.id);
                                      },
                                    ))
                                .toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 100,
                              height: 50,
                              child: CustomButton(
                                gradientLeft: blueLight,
                                gradientRight: blueLight2,
                                title: "Next",
                                color: blue,
                                onTap: () {
                                  stepperController.stepperIndex = 2;
                                  Get.to(() => JobCreateSecondScreen());
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
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
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
    //       child: Column(
    //         children: [
    //           CustomeStepper(
    //             title: "Create a new Job",
    //             stepperSubTitle1: "",
    //             stepperSubTitle2: "",
    //             stepperSubTitle3: "",
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 10),
    //             child: Container(
    //               color: greenlight,
    //               child: Padding(
    //                 padding:
    //                     const EdgeInsets.only(left: 16, right: 16, top: 10),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const TextLabel(
    //                       title: "Step 1",
    //                       color: black,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w700,
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 10),
    //                       child: TextLabel(
    //                         title: "Job Title",
    //                         color: lightGrey,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         decoration: BoxDecoration(
    //                           color: dropdownColor,
    //                           borderRadius: BorderRadius.circular(15),
    //                         ),
    //                         child: const Padding(
    //                           padding: EdgeInsets.only(left: 20),
    //                           child: TextField(
    //                               decoration: InputDecoration(
    //                             border: InputBorder.none,
    //                             hintText: "Family",
    //                             hintStyle: TextStyle(
    //                                 color: black,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w400),
    //                           )),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 14),
    //                       child: TextLabel(
    //                         title: "Job Category",
    //                         color: lightGrey2,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         height: 50,
    //                         width: MediaQuery.of(context).size.width,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: lightWhite),
    //                         child: Padding(
    //                           padding:
    //                               const EdgeInsets.only(left: 10, right: 10),
    //                           child: DropdownButtonFormField<String>(
    //                             decoration: const InputDecoration(
    //                               enabledBorder: InputBorder.none,
    //                             ),
    //                             // Initial Value
    //                             value: stepperController.dropdownvalue,
    //                             // Down Arrow Icon
    //                             icon: const Icon(Icons.keyboard_arrow_down),
    //                             borderRadius: BorderRadius.circular(20),
    //                             // Array list of items
    //                             items:
    //                                 stepperController.items.map((String items) {
    //                               return DropdownMenuItem(
    //                                 value: items,
    //                                 child: Text(items),
    //                               );
    //                             }).toList(),
    //                             // After selecting the desired option,it will
    //                             // change button value to selected value
    //                             onChanged: (String? newValue) {
    //                               stepperController.dropdownvalue = newValue!;
    //                             },
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 14),
    //                       child: TextLabel(
    //                         title: "Job type",
    //                         color: lightGrey2,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         height: 50,
    //                         width: MediaQuery.of(context).size.width,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: lightWhite),
    //                         child: Padding(
    //                           padding:
    //                               const EdgeInsets.only(left: 10, right: 10),
    //                           child: DropdownButtonFormField<String>(
    //                             decoration: const InputDecoration(
    //                               enabledBorder: InputBorder.none,
    //                             ),
    //                             // Initial Value
    //                             value: stepperController.dropdownvalue,
    //                             // Down Arrow Icon
    //                             icon: const Icon(Icons.keyboard_arrow_down),
    //                             borderRadius: BorderRadius.circular(20),
    //                             // Array list of items
    //                             items:
    //                                 stepperController.items.map((String items) {
    //                               return DropdownMenuItem(
    //                                 value: items,
    //                                 child: Text(items),
    //                               );
    //                             }).toList(),
    //                             // After selecting the desired option,it will
    //                             // change button value to selected value
    //                             onChanged: (String? newValue) {
    //                               stepperController.dropdownvalue = newValue!;
    //                             },
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 10),
    //                       child: TextLabel(
    //                         title: "Job Education",
    //                         color: lightGrey,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         decoration: BoxDecoration(
    //                           color: dropdownColor,
    //                           borderRadius: BorderRadius.circular(15),
    //                         ),
    //                         child: const Padding(
    //                           padding: EdgeInsets.only(left: 10),
    //                           child: TextField(
    //                               decoration: InputDecoration(
    //                             border: InputBorder.none,
    //                             prefixIcon: Icon(
    //                               Icons.search,
    //                               color: black,
    //                             ),
    //                             hintText: "Search",
    //                             hintStyle: TextStyle(
    //                                 color: black,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w400),
    //                           )),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 14),
    //                       child: TextLabel(
    //                         title: "Job Experience",
    //                         color: lightGrey2,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         height: 50,
    //                         width: MediaQuery.of(context).size.width,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: lightWhite),
    //                         child: Padding(
    //                           padding:
    //                               const EdgeInsets.only(left: 10, right: 10),
    //                           child: DropdownButtonFormField<String>(
    //                             decoration: const InputDecoration(
    //                               enabledBorder: InputBorder.none,
    //                             ),
    //                             // Initial Value
    //                             value: stepperController.dropdownvalue,
    //                             // Down Arrow Icon
    //                             icon: const Icon(Icons.keyboard_arrow_down),
    //                             borderRadius: BorderRadius.circular(20),
    //                             // Array list of items
    //                             items:
    //                                 stepperController.items.map((String items) {
    //                               return DropdownMenuItem(
    //                                 value: items,
    //                                 child: Text(items),
    //                               );
    //                             }).toList(),
    //                             // After selecting the desired option,it will
    //                             // change button value to selected value
    //                             onChanged: (String? newValue) {
    //                               stepperController.dropdownvalue = newValue!;
    //                             },
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 10),
    //                       child: TextLabel(
    //                         title: "Skills",
    //                         color: lightGrey,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         decoration: BoxDecoration(
    //                           color: dropdownColor,
    //                           borderRadius: BorderRadius.circular(15),
    //                         ),
    //                         child: Padding(
    //                           padding: const EdgeInsets.only(left: 10),
    //                           child: Row(
    //                             children: [
    //                               Expanded(
    //                                 child: TextField(
    //                                     controller: stepperController.skill,
    //                                     decoration: const InputDecoration(
    //                                       border: InputBorder.none,
    //                                       prefixIcon: Icon(
    //                                         Icons.search,
    //                                         color: black,
    //                                       ),
    //                                       hintText: "Search skills",
    //                                       hintStyle: TextStyle(
    //                                           color: black,
    //                                           fontSize: 16,
    //                                           fontWeight: FontWeight.w400),
    //                                     )),
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(
    //                                     left: 10, right: 10),
    //                                 child: Expanded(
    //                                   child: InkWell(
    //                                     onTap: () {
    //                                       stepperController.allChips.add(
    //                                           ChipData(
    //                                               id: DateTime.now().toString(),
    //                                               name: stepperController
    //                                                   .skill.text));
    //                                       // reset the TextField
    //                                       stepperController.skill.text = '';
    //                                     },
    //                                     child: const TextLabel(
    //                                       title: "Add",
    //                                       fontSize: 14,
    //                                       fontWeight: FontWeight.w600,
    //                                       color: orange,
    //                                     ),
    //                                   ),
    //                                 ),
    //                               )
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const Padding(
    //                       padding: EdgeInsets.only(top: 10, bottom: 10),
    //                       child: TextLabel(
    //                         title: "Skill Added",
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w700,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Wrap(
    //                         spacing: 10,
    //                         children: stepperController.allChips
    //                             .map((chip) => Chip(
    //                                   key: ValueKey(chip.id),
    //                                   label: Text(
    //                                     chip.name,
    //                                     style: const TextStyle(
    //                                         fontSize: 13,
    //                                         fontWeight: FontWeight.w600),
    //                                   ),
    //                                   padding: const EdgeInsets.symmetric(
    //                                       vertical: 7, horizontal: 10),
    //                                   deleteIconColor: blue,
    //                                   onDeleted: () {
    //                                     stepperController.deleteChip(chip.id);
    //                                   },
    //                                 ))
    //                             .toList(),
    //                       ),
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: CustomButton(
    //                             gradientLeft: blueLight,
    //                             gradientRight: blueLight2,
    //                             title: "Next",
    //                             color: blue,
    //                             onTap: () {
    //                               stepperController.stepperIndex = 2;
    //                               Get.to(JobCreateSecond());
    //                             },
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     const SizedBox(
    //                       height: 20,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 30,
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
