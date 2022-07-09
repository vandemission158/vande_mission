import 'dart:ffi';

import 'package:get/get.dart';

import '../view/lets_add_family.dart';
import '../view/register_new_society.dart';


class RegisterFamilyController extends GetxController {
  void onTapNext() {
    Get.to(() => LetsAddFamily());
  }

  void onTapNewSociety() {
    Get.to(() => RegisterNewSociety());
  }
}
