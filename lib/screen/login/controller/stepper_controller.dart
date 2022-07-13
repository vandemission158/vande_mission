import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepperController extends GetxController{

     int activeStep = 2; // Initial step set to 5.

      int upperBound = 3;

var items = [
  "Full Time",
  "Part Time",
  "Intership",
  "Agency & Partners"
];

  String dropdownvalue = "Agency & Partners";

  TextEditingController skill = TextEditingController();

  final List<ChipData> allChips = [];

   ///remove the skill method
  void deleteChip(String id) {
      allChips.removeWhere((element) => element.id == id);
  }

  int stepperIndex = 1;

}

/// Data model for a chip
class ChipData {
  // an id is useful when deleting chip
  final String id;
  final String name;
  ChipData({required this.id, required this.name});
}