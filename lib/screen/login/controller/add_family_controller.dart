import 'package:get/get.dart';

import '../view/lets_add_family_member.dart';

class AddFamilyController extends GetxController {
  void onTapAdd() {
    Get.to(() => const LetsAddFamilyMember());
  }
}
