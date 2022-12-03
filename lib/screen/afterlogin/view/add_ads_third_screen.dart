import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/text_label.dart';
import '../controller/add_ads_controller.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/stepper_controller.dart';
import 'add_ad_screen.dart';

class AddAdThirdScreen extends StatelessWidget {
  AddAdThirdScreen({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());
  final ComponetsScreenController componetsScreenController =
      Get.put(ComponetsScreenController());
  final AddAdsContrller controller = Get.put(AddAdsContrller());

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
                        title: "Step 3",
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
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
                        height: 2,
                      ),
                      const CustomTextField(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        hintText: "Location",
                        autofocus: false,
                        color: white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Image.asset(mapImage),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Audience State",
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: CustomDropDown(
                          title: "Select Bussiness type",
                          color: white,
                          onTap: () => controller.businessTypeBottom(context),
                          controller:
                              controller.businessTypeTextController.value,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextLabel(
                          title: "Bidding",
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: CustomDropDown(
                          title: "Select Bussiness type",
                          color: white,
                          onTap: () => controller.businessTypeBottom(context),
                          controller:
                              controller.businessTypeTextController.value,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: Constants.width(context),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: const [
                                TextLabel(
                                  title: "Estimated Reach",
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                TextLabel(
                                  title: "28091 Users",
                                  color: orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CustomButton(
                  gradientLeft: orangeLight2,
                  gradientRight: orangeLight1,
                  title: "Publish Ad",
                  color: blue,
                  onTap: () {
                    stepperController.stepperIndex = 1;
                    Get.to(AddAdsScreen());
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
}
