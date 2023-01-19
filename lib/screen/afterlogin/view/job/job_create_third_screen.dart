import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/controller/job/job_controller.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/widgets/custom_stepper.dart';

import '../../../../helper/app_color.dart';
import '../../../../helper/image_constant.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/text_label.dart';
import '../../controller/componet_screen_controller.dart';

class JobCreateThirdScreen extends StatelessWidget {
  JobCreateThirdScreen({Key? key}) : super(key: key);

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
              Container(
                decoration: BoxDecoration(color: dropdownColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(
                        title: "Step 3",
                        color: missonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Job Division type",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      CustomRadioButton(
                        elevation: 0,
                        absoluteZeroSpacing: false,
                        unSelectedColor: white,
                        buttonLables: const [
                          'Business',
                          'Company',
                          'Freelancer',
                        ],
                        buttonValues: const [
                          "Business",
                          "Company",
                          "Freelancer",
                        ],
                        enableShape: true,
                        radius: 10,
                        margin: const EdgeInsets.all(2),
                        defaultSelected: "Business",
                        buttonTextStyle: ButtonTextStyle(selectedColor: blue, unSelectedColor: grey, textStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
                        radioButtonValue: (value) {
                          print(value);
                        },
                        selectedBorderColor: blue,
                        selectedColor: dropdownColor,
                        unSelectedBorderColor: dropdownColor,
                        shapeRadius: 10,
                        width: 100,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 10),
                      //   child: Row(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {},
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //               color: white,
                      //               borderRadius: BorderRadius.circular(10)),
                      //           child: const Padding(
                      //             padding: EdgeInsets.symmetric(
                      //                 horizontal: 10, vertical: 5),
                      //             child: TextLabel(
                      //               title: "Business",
                      //               color: missonColor,
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w400,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         width: 10,
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {},
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //               color: white,
                      //               borderRadius: BorderRadius.circular(10)),
                      //           child: const Padding(
                      //             padding: EdgeInsets.symmetric(
                      //                 horizontal: 10, vertical: 5),
                      //             child: TextLabel(
                      //               title: "Company",
                      //               color: missonColor,
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w400,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         width: 10,
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {},
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //               color: white,
                      //               borderRadius: BorderRadius.circular(10)),
                      //           child: const Padding(
                      //             padding: EdgeInsets.symmetric(
                      //                 horizontal: 10, vertical: 5),
                      //             child: TextLabel(
                      //               title: "Freelancer",
                      //               color: missonColor,
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w400,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextLabel(
                        title: "Company Email (Optional)",
                        color: missonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      const CustomTextField(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        hintText: "Enter Company Name",
                        autofocus: false,
                        color: white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextLabel(
                        title: "Company Email",
                        color: missonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      const CustomTextField(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        hintText: "Enter Company Email",
                        autofocus: false,
                        color: white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Company Contact Numbers",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [
                                  const TextLabel(
                                    title: "+91",
                                    color: grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Center(child: Image.asset(down))
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              width: 1,
                              color: verticalDividerColor.withOpacity(0.2),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  // controller: controller.phoneNumberController.value,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      filled: true,
                                      hintStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: grey),
                                      hintText: "enter_mobile_number".tr,
                                      fillColor: white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: TextLabel(
                            title: "+ Add more numbers",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Company Website URL",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const CustomTextField(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        hintText: "Enter Company Website URL",
                        autofocus: false,
                        color: white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Description",
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
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset(
                                location,
                                color: blue,
                              ),
                            ),
                            const Expanded(
                              child: CustomTextField(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                hintText: "Location",
                                autofocus: false,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(mapImage),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Sector",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const CustomDropDown(
                        title: "Select Sector",
                        color: white,
                        // onTap: () => controller.businessTypeBottom(context),
                        // controller: controller.businessTypeTextController.value,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CustomButton(
                          gradientLeft: orangeLight2,
                          gradientRight: orangeLight1,
                          title: "Publish Job",
                          color: blue,
                          onTap: () {
                            stepperController.stepperIndex = 3;
                            // Get.to(JobCreateThirdScreen());
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
    //       child: Column(
    //         children: [
    //           CustomeStepper(),
    //           Container(
    //             // color: Colors.blueGrey.withOpacity(0.1),
    //             // color: Colors.greenAccent.withOpacity(0.15),
    //             color: greenlight,
    //             child: Padding(
    //               padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const TextLabel(
    //                     title: "Step 3",
    //                     color: black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Job Division type",
    //                       color: black,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Row(
    //                       children: [
    //                         Container(
    //                           decoration: BoxDecoration(
    //                               border: Border.all(color: blue),
    //                               borderRadius: BorderRadius.circular(10)),
    //                           child: const Padding(
    //                             padding: EdgeInsets.all(10),
    //                             child: TextLabel(
    //                               title: "Business",
    //                               color: blue,
    //                               fontSize: 13,
    //                               fontWeight: FontWeight.w500,
    //                             ),
    //                           ),
    //                         ),
    //                         const SizedBox(
    //                           width: 10,
    //                         ),
    //                         Container(
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: dropdownColor,
    //                           ),
    //                           child: const Padding(
    //                             padding: EdgeInsets.all(12),
    //                             child: TextLabel(
    //                               title: "Company",
    //                               color: grey,
    //                               fontSize: 13,
    //                               fontWeight: FontWeight.w500,
    //                             ),
    //                           ),
    //                         ),
    //                         const SizedBox(
    //                           width: 10,
    //                         ),
    //                         Container(
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: dropdownColor,
    //                           ),
    //                           child: const Padding(
    //                             padding: EdgeInsets.all(12),
    //                             child: TextLabel(
    //                               title: "Freelancer",
    //                               color: grey,
    //                               fontSize: 13,
    //                               fontWeight: FontWeight.w500,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Company Name",
    //                       color: lightGrey,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left: 10),
    //                         child: TextField(
    //                             decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "company name",
    //                           hintStyle: TextStyle(
    //                               color: black,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400),
    //                         )),
    //                       ),
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Company Email (Optional)",
    //                       color: lightGrey,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left: 10),
    //                         child: TextField(
    //                             decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "company@gmail.com",
    //                           hintStyle: TextStyle(
    //                               color: black,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400),
    //                         )),
    //                       ),
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Company Contact Numbers",
    //                       color: lightGrey,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 10),
    //                         child: Row(
    //                           children: [
    //                             CountryCodePicker(
    //                               enabled: false,
    //                               onChanged: (c) => c.name,
    //                               initialSelection: 'TF',
    //                               showFlag: false,
    //                               showCountryOnly: true,
    //                               showOnlyCountryWhenClosed: false,
    //                               favorite: const ['+91', 'IN'],
    //                             ),
    //                             const Expanded(
    //                               child: TextField(
    //                                   decoration: InputDecoration(
    //                                 border: InputBorder.none,
    //                                 hintText: "Mobile number",
    //                                 hintStyle: TextStyle(
    //                                     color: black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.w400),
    //                               )),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: const [
    //                         TextLabel(
    //                           title: "+ Add more numbers",
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w500,
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Company Website URL",
    //                       color: lightGrey,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left: 10),
    //                         child: TextField(
    //                             decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "https://www.figma.com",
    //                           hintStyle: TextStyle(
    //                               color: black,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400),
    //                         )),
    //                       ),
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 10),
    //                     child: TextLabel(
    //                       title: "Location",
    //                       color: lightGrey,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left: 10),
    //                         child: TextField(
    //                             decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "301-A, Vandemataram, South Bopal",
    //                           hintStyle: TextStyle(
    //                               color: black,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400),
    //                         )),
    //                       ),
    //                     ),
    //                   ),
    //                   Image.asset(mapImage),
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 14),
    //                     child: TextLabel(
    //                       title: "Sector",
    //                       color: lightGrey2,
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10),
    //                     child: Container(
    //                       height: 50,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: lightWhite),
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 10, right: 10),
    //                         child: DropdownButtonFormField<String>(
    //                           decoration: const InputDecoration(
    //                             enabledBorder: InputBorder.none,
    //                           ),
    //                           // Initial Value
    //                           value: stepperController.dropdownvalue,
    //                           // Down Arrow Icon
    //                           icon: const Icon(Icons.keyboard_arrow_down),
    //                           borderRadius: BorderRadius.circular(20),
    //                           // Array list of items
    //                           items:
    //                               stepperController.items.map((String items) {
    //                             return DropdownMenuItem(
    //                               value: items,
    //                               child: Text(items),
    //                             );
    //                           }).toList(),
    //                           // After selecting the desired option,it will
    //                           // change button value to selected value
    //                           onChanged: (String? newValue) {
    //                             stepperController.dropdownvalue = newValue!;
    //                           },
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 15),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: CustomButton(
    //                             gradientLeft: blueLight,
    //                             gradientRight: blueLight2,
    //                             title: "Prev",
    //                             color: blue,
    //                             onTap: () {
    //                               stepperController.stepperIndex = 2;
    //                               Get.to(CreateJobSecond());
    //                             },
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: CustomButton(
    //                             gradientLeft: blueLight,
    //                             gradientRight: blueLight2,
    //                             title: "Publish",
    //                             color: blue,
    //                             onTap: () {},
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 20,
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
