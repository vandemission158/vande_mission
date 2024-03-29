import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/text_label.dart';
import '../controller/add_ads_controller.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/create_event_first_controller.dart';
import '../controller/stepper_controller.dart';
import 'add_ad_screen.dart';

class CreateEventThirdScreen extends StatelessWidget {
  CreateEventThirdScreen({Key? key}) : super(key: key);

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
                title: "Create Event",
                stepperSubTitle1: "Business",
                stepperSubTitle2: "Campaign",
                stepperSubTitle3: "Location",
              ),
              Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(
                        title: "Step 3 -  Invitation",
                        color: missonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Invitation Type",
                          color: missonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      CustomDropDown(
                        title: "Select Invitation Type",
                        color: dropdownColor,
                        onTap: () => controller.businessTypeBottom(context),
                        controller: controller.businessTypeTextController.value,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextLabel(
                              title: "Invitees",
                              color: missonColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  createEventFirstController.userList(context),
                              child: const TextLabel(
                                title: "Add",
                                color: orange,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: dropdownColor,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [Center(child: Image.asset(search))],
                              ),
                            ),
                            const Expanded(
                              child: CustomTextField(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                hintText: "Search",
                                autofocus: false,
                                color: dropdownColor,
                              ),
                            ),
                            Container(
                              height: 52,
                              width: 1,
                              color: verticalDividerColor.withOpacity(0.2),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(child: Image.asset(search)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset(
                                  familyImage1,
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: missonColor),
                                  ),
                                  Text(
                                    "Male",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        color: grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            close,
                            height: 15,
                            width: 15,
                            color: grey,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset(
                                  familyImage1,
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: missonColor),
                                  ),
                                  Text(
                                    "Male",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        color: grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            close,
                            height: 15,
                            width: 15,
                            color: grey,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                      // filterData(),
                      const SizedBox(
                        height: 10,
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
                                value:
                                    createEventFirstController.isChecked.value,
                                tristate: false,
                                onChanged: (isCheckedValue) {
                                  createEventFirstController.isChecked.value =
                                      isCheckedValue!;
                                },
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextLabel(
                              title: "Notify invitee by sms end email",
                              color: missonColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextLabel(
                          title:
                              "Reminded invitee 24 hour ago and at the start of event before 5 minute",
                          color: missonColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Create Event",
                  color: blue,
                  onTap: () {
                    stepperController.stepperIndex = 1;
                    Get.to(() => AddAdsScreen());
                  },
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

  Widget filterData() {
    return ListView.builder(
        itemCount: createEventFirstController.locationList.length,
        itemBuilder: (context, index) => GestureDetector(
              // onTap: () =>
              //     Get.to(() => const Chat(), arguments: item, transition: rightToLeft),
              child: Container(
                color: context.theme.backgroundColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(43.0),
                                child: Image.asset(createEventFirstController
                                    .locationList[index]['image']
                                    .toString())),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              createEventFirstController.locationList[index]
                                      ['name']!
                                  .toUpperCase()
                                  .capitalizeFirst
                                  .toString(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  color: context.theme.focusColor),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(43.0),
                                child: Image.asset(
                                  createEventFirstController.locationList[index]
                                          ['image']
                                      .toString(),
                                  color: white,
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              createEventFirstController.locationList[index]
                                      ['chick']!
                                  .toUpperCase()
                                  .capitalizeFirst
                                  .toString(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  color: grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
