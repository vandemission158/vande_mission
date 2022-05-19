import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/add_new_family_member.dart';

class AddSocietyController extends GetxController {
  void onTapNext() {
    print("hello");
    Get.to(() => AddNewFamilyMember());
  }
}
