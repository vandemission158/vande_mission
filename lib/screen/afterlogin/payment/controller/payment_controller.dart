import 'package:get/get.dart';

class PaymentController extends GetxController {
  bool addNow = false;
  var showGenderFeMale = false.obs;
  var showGenderMale = false.obs;
  var genderName = "".obs;
  String dropdownvalue = "INDIA";

  void onTapGenderMale() {
    showGenderFeMale(false);
    genderName.value = "male";
    print(("male:--" + genderName.toString()));
    showGenderMale(true);
  }

  void onTapGenderFeMale() {
    showGenderMale(false);
    genderName.value = "female";
    print("Female:-- " + genderName.toString());
    showGenderFeMale(true);
  }
}
