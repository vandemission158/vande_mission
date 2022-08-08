import 'package:get/get.dart';

import '../view/choose_family_member.dart';

class AddBusinessController extends GetxController {
  var items = ["USA", "INDIA", "JAPAN"];

  String dropdownvalue = "INDIA";

  chooseFamilyScreen() {
    Get.to(() => ChosseFamilyMember());
  }
}
