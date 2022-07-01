import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/add_family_member.dart';
import 'package:vande_mission/screen/login/view/register_family.dart';

class AddFamilyController extends GetxController {
  void onTapAdd() {
    Get.to(() => AddFamilyMember());
  }
}
