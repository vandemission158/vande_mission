import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';
import 'package:vande_mission/screen/login/view/create_job_second.dart';
import 'package:vande_mission/widgets/custom_stepper.dart';

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
                                fontSize: 13,
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
                                fontSize: 13,
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
                                fontSize: 13,
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
                          child:  Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Row(
                              children: [
                                CountryCodePicker(
                        enabled: false,
                        onChanged: (c) => c.name,
                        initialSelection: 'TF',
                        showFlag: false,
                        showCountryOnly: true,
                        showOnlyCountryWhenClosed: false,
                        favorite: const ['+91', 'IN'],
                      ),
                                const Expanded(
                                  child: TextField(
                                   decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mobile number",
                                    hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                                   )
                                  ),
                                ),
                              ],
                            ),
                          ),
                            ),
                               ),  
                                 Padding(
                           padding: const EdgeInsets.only(top:10),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              TextLabel(
                                title: "+ Add more numbers",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                           ),
                         ),
                           const Padding(
                                padding: EdgeInsets.only(top:10),
                                child: TextLabel(
                                  title: "Company Website URL",
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
                              hintText: "https://www.figma.com",
                              hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                             )
                            ),
                          ),
                            ),
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
                          onTap: () {
                            stepperController.stepperIndex = 2;
                            Get.to(CreateJobSecond());
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