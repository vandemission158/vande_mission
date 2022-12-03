import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/screen/afterlogin/view/create_job_third.dart';
import 'package:vande_mission/widgets/custom_stepper.dart';
import 'package:vande_mission/widgets/tap_to_upload_button.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/text_label.dart';
import '../controller/add_ads_controller.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/create_event_first_controller.dart';
import 'add_ad_screen.dart';

class CreateJobSecond extends StatelessWidget {
  CreateJobSecond({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());

  final ComponetsScreenController componetsScreenController =
      Get.put(ComponetsScreenController());
  final AddAdsContrller controller = Get.put(AddAdsContrller());
  final CreateEventFirstController createEventFirstController =
      Get.put(CreateEventFirstController());

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
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                      color: dropdownColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLabel(
                          title: "Step 2",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Salary Type",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        CustomDropDown(
                          title: "Select Salary Type",
                          color: white,
                          onTap: () => controller.businessTypeBottom(context),
                          controller:
                              controller.businessTypeTextController.value,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextLabel(
                                    title: "Minimum Salary",
                                    color: missonColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomTextField(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    hintText: "Enter Min Salary",
                                    autofocus: false,
                                    color: white,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextLabel(
                                    title: "Maximum Salary",
                                    color: missonColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomTextField(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    hintText: "Enter Max Salary",
                                    autofocus: false,
                                    color: white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Total Vacancy",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const CustomTextField(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          hintText: "Enter Total Vacancy",
                          autofocus: false,
                          color: white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Website URL",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const CustomTextField(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          hintText: "Enter Website URL",
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
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Container(
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Write notes here...",
                                    hintStyle: GoogleFonts.poppins(
                                        color: black.withOpacity(0.4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Upload Pdf Notitfication(Optional)",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const TapToUploadButton(),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 50,
                                child: CustomButton(
                                  gradientLeft: blueLight,
                                  gradientRight: blueLight2,
                                  title: "Prev",
                                  color: blue,
                                  onTap: () {
                                    stepperController.stepperIndex = 1;
                                    Get.to(AddAdsScreen());
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 50,
                                child: CustomButton(
                                  gradientLeft: blueLight,
                                  gradientRight: blueLight2,
                                  title: "Next",
                                  color: blue,
                                  onTap: () {
                                    stepperController.stepperIndex = 3;
                                    Get.to(CreateJobThird());
                                  },
                                ),
                              ),
                            ],
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
    // Scaffold(
    //   body:  SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.only(left:16,right:16,top:20),
    //       child: Column(
    //         children: [
    //           CustomeStepper(),
    //           Container(
    //             color: greenlight,
    //             child: Padding(
    //               padding: const EdgeInsets.only(left:16,right: 16,top: 10),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const TextLabel(
    //                     title: "Step 2",
    //                     color: black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                              const Padding(
    //                       padding: EdgeInsets.only(top: 14),
    //                       child: TextLabel(
    //                                   title: "Salary Type",
    //                                   color: lightGrey2,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.w400,
    //                                 ),
    //                     ),
    //                      Padding(
    //                        padding: const EdgeInsets.only(top:10),
    //                        child: Container(
    //                         height: 50,width: MediaQuery.of(context).size.width,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: lightWhite
    //                         ),
    //                          child: Padding(
    //                            padding: const EdgeInsets.only(left:10,right: 10),
    //                            child: DropdownButtonFormField<String>(
    //                             decoration: const InputDecoration(
    //                               enabledBorder: InputBorder.none,
    //                             ),
    //                               // Initial Value
    //                               value: stepperController.dropdownvalue,
    //                               // Down Arrow Icon
    //                               icon: const Icon(Icons.keyboard_arrow_down),
    //                               borderRadius: BorderRadius.circular(20),
    //                               // Array list of items
    //                               items: stepperController.items.map((String items) {
    //                                 return DropdownMenuItem(
    //                                   value: items,
    //                                   child: Text(items),
    //                                 );
    //                               }).toList(),
    //                               // After selecting the desired option,it will
    //                               // change button value to selected value
    //                               onChanged: (String? newValue) {
    //                                   stepperController.dropdownvalue = newValue!;
    //                               },
    //                             ),
    //                          ),
    //                        ),
    //                      ),
    //                      Padding(
    //                  padding: const EdgeInsets.all(8.0),
    //                  child: Row(
    //                   children: [
    //                        Expanded(
    //                          child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const TextLabel(
    //                               title: "Minimum Salary",
    //                               color: lightGrey,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400,
    //                             ),
    //                             Container(
    //                               decoration: BoxDecoration(
    //                                 color: dropdownColor,
    //                                 borderRadius: BorderRadius.circular(15)
    //                               ),
    //                               child: const Padding(
    //                                 padding: EdgeInsets.only(left:12),
    //                                 child: TextField(
    //                                   decoration: InputDecoration(
    //                                     border: InputBorder.none,
    //                                     hintText: "8k",
    //                                     hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400)
    //                                   ),
    //                                 ),
    //                               ),
    //                             )
    //                           ],
    //                          ),
    //                        ),
    //                        const SizedBox(width: 12,),
    //                         Expanded(
    //                           child: Column(
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const TextLabel(
    //                               title: "Maximum Salary",
    //                               color: lightGrey,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400,
    //                             ),
    //                             Container(
    //                               decoration: BoxDecoration(
    //                                 color: dropdownColor,
    //                                 borderRadius: BorderRadius.circular(15)
    //                               ),
    //                               child: const Padding(
    //                                 padding: EdgeInsets.only(left:12),
    //                                 child: TextField(
    //                                   decoration: InputDecoration(
    //                                     border: InputBorder.none,
    //                                     hintText: "20k ",
    //                                     hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400)
    //                                   ),
    //                                 ),
    //                               ),
    //                             )
    //                           ],
    //                          ),
    //                        ),
    //                   ],
    //                  ),
    //                ),
    //                      const Padding(
    //                             padding: EdgeInsets.only(top:10),
    //                             child: TextLabel(
    //                               title: "Total Vacancy",
    //                               color: lightGrey,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w400,
    //                             ),
    //                           ),
    //                            Padding(
    //                              padding: const EdgeInsets.only(top:10),
    //                              child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left:10),
    //                         child: TextField(
    //                          decoration:InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "5",
    //                           hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
    //                          )
    //                         ),
    //                       ),
    //                         ),
    //                            ),
    //                             const Padding(
    //                             padding: EdgeInsets.only(top:10),
    //                             child: TextLabel(
    //                               title: "Website URL",
    //                               color: lightGrey,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w400,
    //                             ),
    //                           ),
    //                            Padding(
    //                              padding: const EdgeInsets.only(top:10),
    //                              child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left:10),
    //                         child: TextField(
    //                          decoration:InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "www.mynewevent.domain",
    //                           hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
    //                          )
    //                         ),
    //                       ),
    //                         ),
    //                            ),
    //                                const Padding(
    //                             padding: EdgeInsets.only(top:10),
    //                             child: TextLabel(
    //                               title: "Description",
    //                               color: lightGrey,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w400,
    //                             ),
    //                           ),
    //                            Padding(
    //                              padding: const EdgeInsets.only(top:10),
    //                              child: Container(
    //                       decoration: BoxDecoration(
    //                         color: dropdownColor,
    //                         borderRadius: BorderRadius.circular(15),
    //                       ),
    //                       child: const Padding(
    //                         padding: EdgeInsets.only(left:10),
    //                         child: TextField(
    //                           maxLines: 5,
    //                          decoration:InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: "Write notes here...",
    //                           hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
    //                          )
    //                         ),
    //                       ),
    //                         ),
    //                            ),
    //                              const Padding(
    //                 padding: EdgeInsets.only(top: 14),
    //                 child: TextLabel(
    //                             title: "Upload Pdf Notitfication(Optional)",
    //                             color: lightGrey2,
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400,
    //                           ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top:10),
    //                 child: Container(
    //                   height: 50,
    //                   width: MediaQuery.of(context).size.width,
    //                   decoration: BoxDecoration(
    //                   color: lightWhite,
    //                   borderRadius: BorderRadius.circular(10)
    //                 ),
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left:12,right: 12),
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: const [
    //                       TextLabel(
    //                         title: "Tap to upload",
    //                         color: vandeColor,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w700,
    //                       ),
    //                       Icon(Icons.file_upload_outlined)
    //                     ],
    //                   ),
    //                 ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top:15),
    //                 child: Row(
    //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                  children: [
    //                                       SizedBox(
    //                                     width: 100,
    //                                     height: 50,
    //                                      child: CustomButton(
    //                       gradientLeft: blueLight,
    //                       gradientRight: blueLight2,
    //                       title: "Prev",
    //                       color: blue,
    //                       onTap: () {
    //                         stepperController.stepperIndex = 1;
    //                         Get.to(CreateJobFirst());
    //                       },
    //                     ),
    //                                    ),
    //                     SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                        child: CustomButton(
    //                       gradientLeft: blueLight,
    //                       gradientRight: blueLight2,
    //                       title: "Next",
    //                       color: blue,
    //                       onTap: () {
    //                         stepperController.stepperIndex = 3;
    //                         Get.to(CreateJobThird());
    //                       },
    //                     ),
    //                                    ),
    //                                  ],
    //                                ),
    //               ),
    //                      const SizedBox(height: 20,),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 20,)
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
