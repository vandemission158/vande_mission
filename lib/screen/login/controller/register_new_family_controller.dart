import 'dart:ffi';

import 'package:get/get.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
import 'package:vande_mission/screen/login/modal/state_modal.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../view/lets_add_family.dart';
import '../view/register_new_society.dart';


class RegisterFamilyController extends GetxController {
  var stateModal = StateModal().obs;

  void onTapNext() {
    Get.to(() => HomePage());
  }

  void onTapNewSociety() {
    Get.to(() => RegisterNewSociety());
  }




  //  void getStateDetais(String userId) async {
  //  // isLoading.value = true;
  //   var data = {
  //     "user_id": userId,
  //   };
  //   RemoteService remoteService = RemoteService();
  //   try {
  //     var res = await remoteService.getStateDetail(data);
  //     if (res != null) {
  //       if (res.success == true) {
  //         stateModal.value = res;
         
           
  //       } else {
  //         Constants.loginSessionExpired(res.message.toString(), false);
  //       }
  //     } else {
  //       Constants.snackBar("login", 'something_went_wrong', true);
  //     }
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

}
