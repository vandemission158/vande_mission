import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/create_ad.dart';
import 'package:vande_mission/screen/afterlogin/view/create_ad_third.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_stepper.dart';
import '../../../widgets/text_label.dart';
import '../controller/componet_screen_controller.dart';
import '../controller/stepper_controller.dart';

class CreateAdSecondScreen extends StatelessWidget {
   CreateAdSecondScreen({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());
final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right:16,top:20),
          child: Column(
            children: [
              customStepper(),
              Container(
                color: greenlight,
                child: Padding(
                  padding: const EdgeInsets.only(left:16,right: 16,top: 10),
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
                                padding: EdgeInsets.only(top:10),
                                child: TextLabel(
                                  title: "Campaign Title",
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
                              hintText: "Family",
                              hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                             )
                            ),
                          ),
                            ),
                               ),
                                   const Padding(
                                padding: EdgeInsets.only(top:10),
                                child: TextLabel(
                                  title: "Description",
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
                              maxLines: 5,
                             decoration:InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write notes here...",
                              hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                             )
                            ),
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
                                              color: dropdownColor,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(left:12),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  suffixIcon: Icon(Icons.calendar_month,color: orange,),
                                                  hintText: "24/02/2002",
                                                  hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400) 
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                       ),
                                     ),
                                     const SizedBox(width: 12,),
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
                                              color: dropdownColor,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(left:12),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  suffixIcon: Icon(Icons.calendar_month,color: orange,),
                                                  border: InputBorder.none,
                                                  hintText: "24/02/2002 ",
                                                  hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400) 
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                       ),
                                     ),
                                ],
                               ),
                                 const Padding(
                                padding: EdgeInsets.only(top:10),
                                child: TextLabel(
                                  title: "Website URL",
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
                              hintText: "www.mynewevent.domain",
                              hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                             )
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
                            stepperController.stepperIndex = 1;
                            Get.to(CreateAddScreen());
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
                            Get.to(CreateAdThird());
                          },
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