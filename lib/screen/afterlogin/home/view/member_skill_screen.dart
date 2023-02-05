import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/controller/stepper_controller.dart';

import '../../../../helper/app_color.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/text_label.dart';

class MemberSkillScreen extends StatelessWidget {
  MemberSkillScreen({Key? key}) : super(key: key);

  final StepperController stepperController = Get.put(StepperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TextLabel(
            title: 'Add your Skills or Talent',
            color: missonColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: dropdownColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          controller: stepperController.skill,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: black,
                            ),
                            hintText: "Search skills",
                            hintStyle: TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            stepperController.allChips.add(ChipData(id: DateTime.now().toString(), name: stepperController.skill.text));
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
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: TextLabel(
              title: "Added",
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Wrap(
              spacing: 10,
              children: stepperController.allChips
                  .map((chip) => Chip(
                        key: ValueKey(chip.id),
                        label: Text(
                          chip.name,
                          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                        deleteIconColor: blue,
                        onDeleted: () {
                          stepperController.deleteChip(chip.id);
                        },
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomButton(
              gradientLeft: blueLight,
              gradientRight: blueLight2,
              title: "Save & Next",
              color: blue,
              onTap: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
