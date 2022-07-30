import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/beforelogin/view/signup_type.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../home/view/homepage.dart';
import '../modal/login_modal.dart';

class LoginScreenController extends GetxController {
  var loginModal = LoginModal().obs;
  final phoneNumberController = TextEditingController().obs;
  final otpController = TextEditingController().obs;

  void onTapRegister() {
    print("Hello");
    Get.to(() => SignUpType());
  }

  
  void onTapLogin() {
   checkLoginAPI(phoneNumberController.value.text,otpController.value.text);
  }

  void checkLoginAPI(String phoneNumber, String otp) async {
    var data = {
      "phone_number": phoneNumber,
      "type": "otpverify",
      "otp": otp,
      "phone_code": "+91",
      "action": loginAPIKey,
    };
    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.loginAPI(data);
      if (res != null) {
        print("not call");
        loginModal.value = res;
        if (loginModal.value.id != null) {
          print("id " + loginModal.value.id.toString());
          print("Data Successfully Login");
          Get.back();
          Get.to(() => const HomePage());
        } else {
          print("data not inseted");
        }
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }
}
