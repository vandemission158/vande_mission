import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';
import 'package:vande_mission/screen/login/view/create_job_second.dart';
import 'package:vande_mission/widgets/custom_stepper.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../widgets/custom_button.dart';

class CreateJobFirst extends StatelessWidget {
   CreateJobFirst({Key? key}) : super(key: key);

   final StepperController stepperController = Get.put(StepperController());

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
                                    title: "Job Title",
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
                              padding: EdgeInsets.only(left:20),
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
                            padding: EdgeInsets.only(top: 14),
                            child: TextLabel(
                                        title: "Job Category",
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
                                        title: "Job type",
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
                                  padding: EdgeInsets.only(top:10),
                                  child: TextLabel(
                                    title: "Job Education",
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
                                prefixIcon: Icon(Icons.search,color: black,),
                                hintText: "Search",
                                hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                               )
                              ),
                            ),
                              ),
                                 ),
                                    const Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: TextLabel(
                                        title: "Job Experience",
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
                                  padding: EdgeInsets.only(top:10),
                                  child: TextLabel(
                                    title: "Skills",
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
                              padding: const EdgeInsets.only(left:10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: stepperController.skill,
                                     decoration:const InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,color: black,),
                                      hintText: "Search skills",
                                      hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                                     )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:10,right: 10),
                                    child: Expanded(
                                      child: InkWell(
                                        onTap: (){
                                          stepperController.allChips.add(ChipData(
                                        id: DateTime.now().toString(),
                                        name: stepperController.skill.text));
                                         // reset the TextField
                                         stepperController.skill.text = '';
                                        },
                                        child: const TextLabel(
                                          title: "Add",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: orange,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                              ),
                                 ),
                                 const Padding(
                                   padding: EdgeInsets.only(top:10,bottom: 10),
                                   child: TextLabel(
                                    title:"Skill Added",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                   ),
                                 ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:10),
                                    child: Wrap(
                                      spacing: 10,
                                      children: stepperController.allChips
                                          .map((chip) => Chip(
                                        key: ValueKey(chip.id),
                                        label: Text(chip.name,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                        padding:
                                        const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                                        deleteIconColor: blue,
                                        onDeleted: () {
                                          stepperController.deleteChip(chip.id);
                                        },
                                      )).toList(),
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
                           Get.to(CreateJobSecond());
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