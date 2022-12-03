import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/auth_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';

class AuthController extends GetxController {
  void autologinApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathAuthAPI,
      "auth_key": authorizationKey,
      "pagination": 0, //1 or 0
      "apicall": 'profile',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AuthApi(dioClient: dioClient).autoLoginApi(requestAll);
      if (res != null) {
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      // print("Hello");
    }
  }

  void logoutApiCall() async {
    var data = {"action": 'afterlogin/logout', "auth_key": authorizationKey};
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      await AuthApi(dioClient: dioClient).logoutApi(data);
    } finally {
      // print("Hello");
    }
  }

  void settingApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathSettingAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AuthApi(dioClient: dioClient).settingApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
