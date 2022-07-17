import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/signup_type.dart';

class LoginScreenController extends GetxController {
  void onTapRegister() {
    print("Hello");
    Get.to(() => SignUpType());
  }
}
