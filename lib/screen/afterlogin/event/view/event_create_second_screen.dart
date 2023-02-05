import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/controller/componet_screen_controller.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/screen/afterlogin/event/controller/event_controller.dart';
import 'package:vande_mission/screen/afterlogin/event/view/event_create_first_screen.dart';
import 'package:vande_mission/screen/afterlogin/event/view/event_create_third_screen.dart';

import '../../../../helper/app_color.dart';
import '../../../../helper/image_constant.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';
import '../../../../widgets/custom_stepper.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/text_label.dart';

class EventCreateSecondScreen extends StatelessWidget {
  EventCreateSecondScreen({Key? key}) : super(key: key);
  final StepperController stepperController = Get.put(StepperController());
  final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());
  // final AddAdsContrller controller = Get.put(AddAdsContrller());
  final EventController eventController = Get.put(EventController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              CustomeStepper(
                title: "Create Event",
                stepperSubTitle1: "Business",
                stepperSubTitle2: "Campaign",
                stepperSubTitle3: "Location",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greenlight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLabel(
                          title: "Step 2 - Organizer Details",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextLabel(
                            title: "Event organizers",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const CustomDropDown(
                          title: "Select Bussiness type",
                          color: white,
                          // onTap: () => controller.businessTypeBottom(context),
                          // controller: controller.businessTypeTextController.value,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                            title: "Organizers Contact Numbers",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
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
                                    Text(
                                      "+91",
                                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: grey),
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
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                            title: "Family Name",
                            color: missonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: dropdownColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const CustomTextField(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            hintText: "Enter Family Name",
                            autofocus: false,
                            color: white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
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
                                    Get.to(EventCreateFirstScreen());
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
                                    Get.to(EventCreateThirdScreen());
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
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
