import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/modal/logout_modal.dart';
// import 'package:vande_mission/screen/beforelogin/modal/login_modal.dart';

import '../../helper/constant.dart';
import '../../remote_services/remote_services.dart';

class ProfileController extends GetxController {
  var logutModal = LogoutModal().obs;

  void logoutAPICall() async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var action = logoutKey;

    var data = {
      "action": action,
      "auth_key": authKey,
    };
    // try{
    //   var res = await AuthApi(action).logoutApi(data);
    //   print("Hello"+res.toString());
    // } finally {
    //   //  isLoading.value = false;
    // }
    
    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.logoutApi(data);
      // print("response --- "+res.statuscode.toString());
      if (res != null) {
        logutModal.value = res;
        if (logutModal.value.message == "success") {
          Constants.logout();
        }
        // tempList.value = stateModal.value.data!;
      } else {
        print("not logout");
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }
}
