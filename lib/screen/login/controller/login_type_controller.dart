import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/add_family.dart';
import 'package:vande_mission/screen/login/view/register_family.dart';

class LoginTypeController extends GetxController {
  var typleList =
      ["New Family", "Already registered family", "Society Registration"].obs;

  void onTapNext() {
    Get.to(() => RegisterFamily());
  }
}
