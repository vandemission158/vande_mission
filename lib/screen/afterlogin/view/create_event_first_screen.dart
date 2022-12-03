import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/controller/create_event_first_controller.dart';
import 'package:vande_mission/screen/afterlogin/view/create_event_second_screen.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/text_label.dart';
import '../controller/add_ads_controller.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/stepper_controller.dart';
import 'add_ads_second_screen.dart';

class CreateEventFirstScreen extends StatelessWidget {
  CreateEventFirstScreen({Key? key}) : super(key: key);
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
        backgroundColor: white,
        elevation: 0,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                CustomeStepper(
                  title: "Create New Event",
                  stepperSubTitle1: "Event Details",
                  stepperSubTitle2: "Organizer",
                  stepperSubTitle3: "Invitation",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: white),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "Step 1",
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "Event Title",
                              color: grey,
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
                              hintText: "Enter Event Title",
                              autofocus: false,
                              color: dropdownColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                        child: Container(
                                      width: Constants.width(context),
                                      height: 55,
                                      decoration: const BoxDecoration(
                                          color: orange,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15))),
                                      child: const Center(
                                          child: TextLabel(
                                        title: "Time",
                                        fontSize: 16,
                                        color: white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    )),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                        child: Container(
                                      width: Constants.width(context),
                                      height: 55,
                                      decoration: const BoxDecoration(
                                          color: dropdownColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight:
                                                  Radius.circular(15))),
                                      child: const Center(
                                          child: TextLabel(
                                        title: "Full Day",
                                        fontSize: 16,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const TextLabel(
                                          title: "Start Date",
                                          color: lightGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: dropdownColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 12),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 15),
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
                                                      fontWeight:
                                                          FontWeight.w400)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const TextLabel(
                                          title: "End Date",
                                          color: lightGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: dropdownColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 15),
                                                  suffixIcon: Icon(
                                                    Icons.calendar_month,
                                                    color: orange,
                                                  ),
                                                  border: InputBorder.none,
                                                  hintText: "24/02/2002 ",
                                                  hintStyle: TextStyle(
                                                      color: black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const TextLabel(
                                          title: "Start Time",
                                          color: lightGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: dropdownColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 12),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 15),
                                                  border: InputBorder.none,
                                                  suffixIcon: GestureDetector(
                                                    onTap: () => print("hello"),
                                                    child: const Icon(
                                                      Icons.access_time,
                                                      color: orange,
                                                    ),
                                                  ),
                                                  hintText: "10:00 AM",
                                                  hintStyle: const TextStyle(
                                                      color: black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const TextLabel(
                                          title: "End Time",
                                          color: lightGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: dropdownColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 15),
                                                  suffixIcon: Icon(
                                                    Icons.access_time,
                                                    color: orange,
                                                  ),
                                                  border: InputBorder.none,
                                                  hintText: "05:00 PM",
                                                  hintStyle: TextStyle(
                                                      color: black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "Location",
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const CustomTextField(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            hintText: "Location",
                            autofocus: false,
                            color: dropdownColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Image.asset(mapImage),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: createEventFirstController
                                                      .isChecked.value ==
                                                  true
                                              ? yellowSociety
                                              : yellowSociety,
                                          width: 3),
                                    ),
                                    width: 24,
                                    height: 24,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: yellowSociety,
                                        activeColor: white,
                                        value: createEventFirstController
                                            .isChecked.value,
                                        tristate: false,
                                        onChanged: (isCheckedValue) {
                                          createEventFirstController.isChecked
                                              .value = isCheckedValue!;
                                        },
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: TextLabel(
                                      title: "Paid Event",
                                      color: missonColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: createEventFirstController
                                                      .isChecked.value ==
                                                  true
                                              ? yellowSociety
                                              : yellowSociety,
                                          width: 3),
                                    ),
                                    width: 24,
                                    height: 24,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: yellowSociety,
                                        activeColor: white,
                                        value: createEventFirstController
                                            .isChecked.value,
                                        tristate: false,
                                        onChanged: (isCheckedValue) {
                                          createEventFirstController.isChecked
                                              .value = isCheckedValue!;
                                        },
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: TextLabel(
                                      title: "ePass",
                                      color: missonColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "Ticket Price",
                              color: grey,
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
                              hintText: "Enter Ticket Price",
                              autofocus: false,
                              color: dropdownColor,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextLabel(
                              title: "Notes",
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              decoration: BoxDecoration(
                                color: dropdownColor,
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
                                    Get.to(() => CreateEventSecondScreen());
                                  },
                                ),
                              ),
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
      ),
    );
  }
}
