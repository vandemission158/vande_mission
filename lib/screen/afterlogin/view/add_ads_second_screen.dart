import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/view/add_ad_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/add_ads_third_screen.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/text_label.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/stepper_controller.dart';

class CreateAdSecondScreen extends StatelessWidget {
  CreateAdSecondScreen({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());
  final ComponetsScreenController componetsScreenController =
      Get.put(ComponetsScreenController());

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
                title: "Create Advertisement",
                stepperSubTitle1: "Business",
                stepperSubTitle2: "Campaign",
                stepperSubTitle3: "Location",
              ),
              Container(
                decoration: BoxDecoration(
                    color: dropdownColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(
                        title: "Step 2",
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Campaign Title",
                          color: grey,
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
                        hintText: "Enter Business Name",
                        autofocus: false,
                        color: white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Description",
                          color: grey,
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
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "Start Date",
                                  color: lightGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          suffixIcon: GestureDetector(
                                            onTap: () => print("hello"),
                                            child: const Icon(
                                              Icons.calendar_month,
                                              color: orange,
                                            ),
                                          ),
                                          hintText: "24/02/2002",
                                          hintStyle: const TextStyle(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "End Date",
                                  color: lightGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.calendar_month,
                                            color: orange,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "24/02/2002 ",
                                          hintStyle: TextStyle(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Website URL",
                          color: lightGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: dropdownColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const CustomTextField(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            hintText: "Enter Weburl",
                            autofocus: false,
                            color: white,
                          ),
                        ),
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
                                  Get.to(AddAdThirdScreen());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
  }
}
