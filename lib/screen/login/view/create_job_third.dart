import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class CreateJobThird extends StatelessWidget {
   CreateJobThird({Key? key}) : super(key: key);

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
                  title: "Step 3",
                  color: black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                 const Padding(
                   padding: EdgeInsets.only(top:10),
                   child: TextLabel(
                    title: "Job Division type",
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                ),
                 ),
                    Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: blue),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: TextLabel(
                        title: "Business",
                        color: blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dropdownColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: TextLabel(
                        title: "Company",
                        color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dropdownColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: TextLabel(
                        title: "Freelancer",
                        color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             const Padding(
                          padding: EdgeInsets.only(top:10),
                          child: TextLabel(
                            title: "Company Name",
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
                        hintText: "company name",
                        hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                       )
                      ),
                    ),
                      ),
                         ),
                         const Padding(
                          padding: EdgeInsets.only(top:10),
                          child: TextLabel(
                            title: "Company Email (Optional)",
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
                        hintText: "company@gmail.com",
                        hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                       )
                      ),
                    ),
                      ),
                         ),
                            const Padding(
                          padding: EdgeInsets.only(top:10),
                          child: TextLabel(
                            title: "Company Contact Numbers",
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
                        hintText: "Mobile number",
                        hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                       )
                      ),
                    ),
                      ),
                         ),  
                           const Padding(
                    padding: EdgeInsets.only(top: 14),
                    child: TextLabel(
                                title: "Sector",
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
                    onTap: () {},
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