import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/choose_family_controller.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class ChosseFamilyMember extends StatelessWidget {
   ChosseFamilyMember({Key? key}) : super(key: key);

  final ChooseFamilyController chooseFamilyController = Get.put(ChooseFamilyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Column(
            children:  [
                const TextLabel(
                  title: 'Choose family member relation',
                  color: missonColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 85,width: 85,
                              child: Image.asset(chooseFamilyController.familyImages[index])),
                            Padding(
                              padding: const EdgeInsets.only(left:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel(
                                    title: chooseFamilyController.member[index],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:missonColor
                                  ),
                                  TextLabel(
                                    title: chooseFamilyController.gemder[index],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: lightGrey2,
                                  ),
                                  Container(
                height: 50,width: MediaQuery.of(context).size.width/1.7,
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
                              value: chooseFamilyController.dropdownvalue,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down), 
                              borderRadius: BorderRadius.circular(20),  
                              // Array list of items
                              items: chooseFamilyController.items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                  chooseFamilyController.dropdownvalue = newValue!;
                              },
                          ),
                 ),
               ),                           
                                ],
                              ),
                            ),
                          ],
                        ),
                     Divider()
                      ],
                    ),
                  );
                }),
                 Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Save & Next",
                  color: blue,
                  onTap: () {
                    chooseFamilyController.skillScreenMove();
                  },
                ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}