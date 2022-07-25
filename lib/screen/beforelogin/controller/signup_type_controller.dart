import 'package:get/get.dart';
import '../view/register_new_family.dart';
import '../view/register_new_society.dart';


class SignUpTypeController extends GetxController {
  var typleList =
      ["New Family", "Already registered family", "Society Registration"].obs;

  void onTapNewFamily() {
    Get.to(() => const RegisterNewFamily());
  }

  void onTapSocietyRegistration() {
    Get.to(() => const RegisterNewSociety());
  }
}
