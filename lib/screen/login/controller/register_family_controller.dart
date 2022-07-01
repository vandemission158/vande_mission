import 'dart:ffi';

import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/add_family.dart';
import 'package:vande_mission/screen/login/view/add_family_member.dart';
import 'package:vande_mission/screen/login/view/add_society.dart';

class RegisterFamilyController extends GetxController {
  void onTapNext() {
    Get.to(() => AddFamily());
  }

  void onTapSave() {
    Get.to(() => AddSociety());
  }
}
