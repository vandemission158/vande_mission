import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/controller/componet_screen_controller.dart';
import 'package:vande_mission/screen/afterlogin/controller/add_ads_controller.dart';
import 'package:vande_mission/screen/afterlogin/view/add_ads_second_screen.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/text_label.dart';
import '../controller/stepper_controller.dart';

class AddAdsScreen extends StatelessWidget {
   AddAdsScreen({Key? key}) : super(key: key);

final StepperController stepperController = Get.put(StepperController());
final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());
final AddAdsContrller createAdContrller = Get.put(AddAdsContrller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16,top: 20),
          child: Column(
            children: [
              customStepper(),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  color: greenlight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:16,right: 16,top: 10),
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
                                  padding: EdgeInsets.only(top:10),
                                  child: TextLabel(
                                    title: "Business Name",
                                    color: lightGrey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                  ),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top:10),
                                   child: Container(
                            decoration: BoxDecoration(
                              color: dropdownColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(left:20),
                              child: TextFormField(
                                controller: createAdContrller.famaily,
                               decoration:const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Family",
                                hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                               ),
                              ),
                            ),
                              ),
                                 ),
                                   const Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: TextLabel(
                                        title: "Business Type",
                                        color: lightGrey2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                      ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(top:10),
                             child: Container(
                              height: 50,width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: lightWhite
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.only(left:10,right: 10),
                                 child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none, 
                                  ),
                                    // Initial Value
                                    value: stepperController.dropdownvalue,
                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down), 
                                    borderRadius: BorderRadius.circular(20),  
                                    // Array list of items
                                    items: stepperController.items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                        stepperController.dropdownvalue = newValue!;
                                    },
                                  ),
                               ),
                             ),
                           ),
                            const Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextLabel(
                            title: "Upload Photo Advertisement",
                            color: lightGrey2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  color: lightWhite,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextLabel(
                        title: "Tap to upload",
                        color: vandeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Icon(Icons.file_upload_outlined)
                    ],
                  ),
                ),
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextLabel(
                            title: "Upload Video Advertisement",
                            color: lightGrey2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  color: lightWhite,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextLabel(
                        title: "Tap to upload",
                        color: vandeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Icon(Icons.file_upload_outlined)
                    ],
                  ),
                ),
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextLabel(
                            title: "Upload Photos for Carousal Ad",
                            color: lightGrey2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  color: lightWhite,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextLabel(
                        title: "Tap to upload",
                        color: vandeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Icon(Icons.file_upload_outlined)
                    ],
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: SizedBox(
                 height: 150,
                  child: GridView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 4,crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, index) {
                        return Stack(
                          children: [
                                Image.asset(
                                componetsScreenController.pollImages[index],fit: BoxFit.cover,),
                                Positioned(
                                  top: 15,right: 10,
                                  child: Container(
                                  decoration: const BoxDecoration(
                                    color: white,
                                    shape: BoxShape.circle),
                                  child: const Icon(Icons.close,size: 15,),
                                ))
                              ],
                        );
                      }),
                ),
              ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                       SizedBox(
                                        width: 100,
                                        height: 50,
                                         child: CustomButton(
                          gradientLeft: blueLight,
                          gradientRight: blueLight2,
                          title: "Next",
                          color: blue,
                          onTap: () {
                            stepperController.stepperIndex = 2;
                           Get.to(CreateAdSecondScreen());
                          },
                        ),
                                       ),
                                     ],
                                   ),
                           const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}