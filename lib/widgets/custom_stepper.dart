import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class CustomeStepper extends StatelessWidget {
  final String? title, stepperSubTitle1, stepperSubTitle2, stepperSubTitle3;
  CustomeStepper(
      {Key? key,
      this.title,
      this.stepperSubTitle1,
      this.stepperSubTitle2,
      this.stepperSubTitle3})
      : super(key: key);

  final StepperController stepperController = Get.put(StepperController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              SizedBox(
                height: 135,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLabel(
                      title: title,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Container(
                        height: 4,
                        width: Constants.width(context) / 1.2,
                        color: const Color(0xffD9D9D9),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                child: Column(
                  children: [
                    stepperController.stepperIndex == 1
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: green),
                            child: const Center(
                                child: Icon(
                              Icons.done,
                              color: white,
                            )),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Color(0xffF0A055),
                                  Color(0xffF1530E),
                                ])),
                            child: const Center(
                              child: TextLabel(
                                title: "1",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: TextLabel(
                        title: "Step 1",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                    TextLabel(
                      title: stepperSubTitle1!,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 100,
                right: 100,
                child: Column(
                  children: [
                    stepperController.stepperIndex == 2
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: green),
                            child: const Center(
                                child: Icon(
                              Icons.done,
                              color: white,
                            )),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Color(0xffF0A055),
                                  Color(0xffF1530E),
                                ])),
                            child: const Center(
                              child: TextLabel(
                                title: "2",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: TextLabel(
                        title: "Step 2",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                    TextLabel(
                      title: stepperSubTitle2!,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 50,
                right: 0,
                child: Column(
                  children: [
                    stepperController.stepperIndex == 3
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: green),
                            child: const Center(
                                child: Icon(
                              Icons.done,
                              color: white,
                            )),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Color(0xffF0A055),
                                  Color(0xffF1530E),
                                ])),
                            child: const Center(
                              child: TextLabel(
                                title: "3",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: TextLabel(
                        title: "Step 3",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                    TextLabel(
                      title: stepperSubTitle3!,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
