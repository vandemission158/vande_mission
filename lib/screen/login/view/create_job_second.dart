import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';
import 'package:vande_mission/screen/login/view/create_job_first.dart';
import 'package:vande_mission/screen/login/view/create_job_third.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class CreateJobSecond extends StatelessWidget {
   CreateJobSecond({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          color: greenlight,
          child: Padding(
            padding: const EdgeInsets.only(left:16,right: 16,top: 50),
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
                    padding: EdgeInsets.only(top: 14),
                    child: TextLabel(
                                title: "Salary Type",
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
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                     Expanded(
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "Minimum Salary",
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
                                  hintText: "8k",
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
                            title: "Maximum Salary",
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
                                  hintText: "20k ",
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
             ),
                   const Padding(
                          padding: EdgeInsets.only(top:10),
                          child: TextLabel(
                            title: "Total Vacancy",
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
                        hintText: "5",
                        hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                       )
                      ),
                    ),
                      ),
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
                           const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Upload Pdf Notitfication(Optional)",
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
                    onTap: () {},
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
                      Get.to(CreateJobThird());
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
      ),
    );
  }
}