// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/login/controller/tutorial_controller.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

class TutorialScreen extends StatelessWidget {
 TutorialScreen({Key? key}) : super(key: key);

  final TutorialController tutorialController = Get.put(TutorialController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(
                title: 'Enter your Business Information',
                color: missonColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Type",
                color: missonColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
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
                  const SizedBox(width: 20,),
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
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: TextLabel(
                          title: "Business Name",
                          color: grey,
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
            hintText: "Patel Hardware Store",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Business Address",
                          color: darkGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                        ),
            ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Country",
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
                      value: tutorialController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: tutorialController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          tutorialController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
              const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "State",
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
                      value: tutorialController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: tutorialController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          tutorialController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
              const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "District",
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
                      value: tutorialController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: tutorialController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          tutorialController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
              const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Village/City/Town",
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
                      value: tutorialController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: tutorialController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          tutorialController.dropdownvalue = newValue!;
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
                            title: "Area",
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: dropdownColor,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "South Bopal",
                                  hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400) 
                                ),
                              ),
                            ),
                          )
                        ],
                       ),
                     ),
                     SizedBox(width: 12,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "Pin code",
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: dropdownColor,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: const TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "380021 ",
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
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "District",
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
                      value: tutorialController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: tutorialController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          tutorialController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: const TextLabel(
                  title: "Description",
                  color: lightGrey2,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                  decoration: BoxDecoration(
                    color: lightWhite,
                    borderRadius: BorderRadius.circular(15)
                  ),  
                  child: Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: TextField(
                      maxLength: 7,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write here",
                        hintStyle: TextStyle(
                          color:black.withOpacity(0.4) ,
                        ),
                      ),
                    ),
                  )
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: const TextLabel(
                  title: "Experience in Business",
                  color: lightGrey2,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
             ),
              ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                  decoration: BoxDecoration(
                    color: lightWhite,
                    borderRadius: BorderRadius.circular(15)
                  ),  
                  child: Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "10 Years",
                        hintStyle: TextStyle(
                          color:black.withOpacity(0.4) ,
                        ),
                        hintMaxLines: 5
                      ),
                    ),
                  )
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: TextLabel(
                title: "Business Partner",
                color: lightGrey2,
                fontSize: 16,
                fontWeight:FontWeight.w400
               ),
             ),
                  Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                  decoration: BoxDecoration(
                    color: lightWhite,
                    borderRadius: BorderRadius.circular(15)
                  ),  
                  child: Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.filter_alt),
                        border: InputBorder.none,
                        hintText: "Jayesh Patel",
                        hintStyle: TextStyle(
                          color:black.withOpacity(0.4) ,
                        ),
                        hintMaxLines: 5
                      ),
                    ),
                  )
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Save & Next",
                  color: blue,
                  onTap: () {
                    tutorialController.chooseFamilyScreen();
                  },
                ),
             ),
             const SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}