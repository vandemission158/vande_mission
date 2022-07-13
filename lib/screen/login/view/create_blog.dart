import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/create_bloag_controller.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class CreateBlogScreen extends StatelessWidget {
   CreateBlogScreen({Key? key}) : super(key: key);

  final BloagController bloagController = Get.put(BloagController());
  final StepperController stepperController = Get.put(StepperController());

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
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const TextLabel(
                    title: 'Create a New Blog',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                     const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Blog Title",
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
            hintText: "Bag 25 % discount",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Blog Keywords",
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
                                      hintText: "Keyword",
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
                                    title:"Added",
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
          padding: EdgeInsets.only(left:20),
          child: TextField(
            maxLines: 10,
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "Write here",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Upload your Offer Photos",
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
                          title: "Upload your Offer Video",
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
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Create",
                  color: blue,
                  onTap: () {
                    bloagController.newBroadCastMove();
                  },
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