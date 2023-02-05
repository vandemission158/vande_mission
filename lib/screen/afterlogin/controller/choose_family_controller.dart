import 'package:get/get.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/home/view/member_skill_screen.dart';

class ChooseFamilyController extends GetxController {
  List<String> familyImages = [familyImage1, familyImage2, familyImage3];

  List<String> member = ["John Doe", "Jess Doe", "Will Doe"];

  List<String> gemder = ["Male", "Female", "Male"];

  var items = ["Father", "Mother", "Brother"];

  String dropdownvalue = "Father";

  skillScreenMove() {
    // Get.to(SkillScreen());
  }
}
