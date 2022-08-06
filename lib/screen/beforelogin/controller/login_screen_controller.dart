import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/beforelogin/view/signup_type.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../afterlogin/view/homepage.dart';
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
    checkLoginAPI(phoneNumberController.value.text, otpController.value.text);
  }

  void checkLoginAPI(String phoneNumber, String otp) async {
    var data = {
      "phone_number": phoneNumber,
      "type": "otpverify",
      "otp": otp,
      "phone_code": "+91",
      "action": loginAPIKey,
    };
    RemoteService remoteService = RemoteService(loginAPIKey);
    try {
      var res = await remoteService.loginAPI(data);
      if (res != null) {
        print("not call");
        loginModal.value = res;
        if (res.id != null && res.token != null && res.authKey != null) {
          authorizationToken = res.token.toString();
          id = res.id!.toString();
          authorizationKey = res.authKey.toString();
          Constants.setHive(authKey, res.authKey.toString());
          Constants.setHive(authToken, res.token.toString());
          Constants.setHive(userId, res.id.toString());
          Constants.setHive(isLoginHive, true);
          print("id " + loginModal.value.id.toString());
          print("Data Successfully Token:---" + authorizationToken);
          print("Data Successfully Key:---" + authorizationKey);

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
