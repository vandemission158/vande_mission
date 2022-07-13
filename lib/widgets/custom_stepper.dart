import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/login/controller/stepper_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

late StepperController stepperController;

customStepper() {
  final StepperController stepperController = Get.put(StepperController());
 return Padding(
   padding: const EdgeInsets.only(top:20),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      const TextLabel(
                title: "Create a new Job",
                fontSize: 24,
                fontWeight: FontWeight.w700,
               ),
       Padding(
         padding: const EdgeInsets.only(top:10,bottom: 10),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
             stepperController.stepperIndex == 1 ?Container(
                  height: 30,width: 30,
                  decoration:  const BoxDecoration(
                   shape: BoxShape.circle,
                  color: green
                  ),
                   child:  const Center(
                     child: Icon(Icons.done,color: white,)
                   ),
                ):
              Container(
                  height: 30,width: 30,
                  decoration:  const BoxDecoration(
                   shape: BoxShape.circle,
                   gradient: LinearGradient(colors: [
                    Color(0xffF0A055),
                    Color(0xffF1530E),
                   ])
                  ),
                   child: const Center(
                     child: TextLabel(
                      title: "1",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                  ),
                   ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:5),
                  child: TextLabel(
                    title: "Step 1",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 5,
                width: 100,
                color: const Color(0xffD9D9D9),
              ),
            ),
             Column(
               children: [
              stepperController.stepperIndex == 2 ?Container(
                  height: 30,width: 30,
                  decoration:  const BoxDecoration(
                   shape: BoxShape.circle,
                  color: green
                  ),
                   child:  const Center(
                     child: Icon(Icons.done,color: white,)
                   ),
                ): Container(
                  height: 30,width: 30,
                  decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   gradient: LinearGradient(colors: [
                    Color(0xffF0A055),
                    Color(0xffF1530E),
                   ])
                  ),
                  child: const Center(
                    child: TextLabel(
                      title: "2",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
            ),
            const Padding(
                  padding: EdgeInsets.only(top:5),
                  child: TextLabel(
                    title: "Step 2",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                )
               ],
             ),
            Padding(
              padding: const EdgeInsets.only(bottom:20),
              child: Container(
                height: 5,
                width: 100,
                color: const Color(0xffD9D9D9),
              ),
            ),
             Column(
               children: [
               stepperController.stepperIndex == 3 ? Container(
                  height: 30,width: 30,
                  decoration:  const BoxDecoration(
                   shape: BoxShape.circle,
                  color: green
                  ),
                   child:  const Center(
                     child: Icon(Icons.done,color: white,)
                   ),
                ): Container(
                  height: 30,width: 30,
                  decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   gradient: LinearGradient(colors: [
                    Color(0xffF0A055),
                    Color(0xffF1530E),
                   ])
                  ),
                   child: const Center(
                     child: TextLabel(
                      title: "3",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                  ),
                   ),
            ),
            const Padding(
                  padding: EdgeInsets.only(top:5),
                  child: TextLabel(
                    title: "Step 3",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                )
               ],
             ),
          ],
         ),
       ),
     ],
   ),
 );

}