import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';

import '../../helper/constant.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkIsLogin();
    super.onInit();
  }

  Future checkIsLogin() async {
    // get user id, auth token and is login from hive database
    if (await Constants.getHive(userId) != null) {
      id = await Constants.getHive(userId);
    }
    if (await Constants.getHive(authToken) != null) {
      authorizationToken = await Constants.getHive(authToken);
    }
    if (await Constants.getHive(authKey) != null) {
      authorizationKey = await Constants.getHive(authKey);
    }
    var isLogin = await Constants.getHive(isLoginHive); 
    if (isLogin == true) {
      Get.offAll(() => const HomePage(), transition: Transition.fadeIn);
    } else {
      Get.offAll(() => const LoginScreen(), transition: Transition.fadeIn);
    }
  }
}
