import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/create_ad_second.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/text_label.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/stepper_controller.dart';

class CreateAdThird extends StatelessWidget {
   CreateAdThird({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());
final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16,top: 20),
          child: Column(
            children: [
              customStepper(),
              Container(
               // color: Colors.blueGrey.withOpacity(0.1),
                // color: Colors.greenAccent.withOpacity(0.15),
                 color: greenlight,
                child: Padding(
                  padding: const EdgeInsets.only(left:16,right: 16,top: 10),
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
                                padding: EdgeInsets.only(top:10),
                                child: TextLabel(
                                  title: "Location",
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
                          child: const Padding(
                            padding: EdgeInsets.only(left:10),
                            child: TextField(
                             decoration:InputDecoration(
                              border: InputBorder.none,
                              hintText: "301-A, Vandemataram, South Bopal",
                              hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                             )
                            ),
                          ),
                            ),
                               ),
                               Image.asset(mapImage),
                                 const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: TextLabel(
                                      title: "Audience State",
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
                                      title: "Bidding",
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
                         Padding(
                           padding: const EdgeInsets.only(top:10),
                           child: Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: lightWhite,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top:12,bottom: 12),
                              child: Column(
                                children: const [
                                  TextLabel(
                                    title: "Estimated Reach",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  TextLabel(
                                    title: "28091 Users",
                                     fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: orange,
                                  ), 
                                ],
                              ),
                            ),
                           ),
                         ),
                 Padding(
                    padding: const EdgeInsets.only(top:15),
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
                            stepperController.stepperIndex = 2;
                            Get.to(CreateAdSecondScreen());
                          },
                        ),
                                       ),
                        SizedBox(
                              width: 100,
                              height: 50,
                           child: CustomButton(
                          gradientLeft: blueLight,
                          gradientRight: blueLight2,
                          title: "Publish",
                          color: blue,
                          onTap: () { },
                        ),
                      ),
                    ],
                   ),
                  ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}