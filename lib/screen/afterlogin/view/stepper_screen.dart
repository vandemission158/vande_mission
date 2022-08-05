import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/app_color.dart';

class StepperScreen extends StatelessWidget {

 final StepperController  stepperController = Get.put(StepperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right: 16),
        child: Column(
          children: [
             const TextLabel(
              title: "Create a new Job",
              fontSize: 24,
              fontWeight: FontWeight.w700,
             ),
             Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              NumberStepper(
              numbers:const [
                  1,
                  2,
                  3,
               ],
                // activeStep property set to activeStep variable defined above.
                activeStep: stepperController.activeStep,

                // This ensures step-tapping updates the activeStep. 
                onStepReached: (index) {
                   stepperController.activeStep = index;
                },
              ),
            ]
          )
      
        ),
          ]
      ),
      )
    );
  }

  Widget nextButton() {
    return ElevatedButton(
      onPressed: () {
        // Increment activeStep, when the next button is tapped. However, check for upper bound.
        if (stepperController.activeStep < stepperController.upperBound) 
          {
            stepperController.activeStep++;
          }
      },
      child: const Text('Next'),
    );
  }

  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (stepperController.activeStep > 0) {
            stepperController.activeStep--;
        }
      },
      child: const Text('Prev'),
    );
  }

}