import 'package:get/get.dart';
import 'package:vande_mission/screen/beforelogin/modal/family_member_modal.dart';
import 'package:vande_mission/screen/beforelogin/view/add_new_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/address_list.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';

class LetsAddFamilyMemberController extends GetxController {
  var familyMemberModal = FamilyMemberModal().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFamilyMemberAPICall("");
  }

  void onTapNext() {
    Get.to(() => const AddNewFamilyMember());
  }

  void onTapAddress() {
    Get.to(() => AddressList());
  }

  void getFamilyMemberAPICall(
    String nextpage,
  ) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var data = {
      "action": familyMemberAPI,
      "type": "Owner",
      "pagination": 1,
      "family_id": 15,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.getFamilyMemberAPI(data, nextpage);
      if (res != null) {
        var oldCurrentPage = familyMemberModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = familyMemberModal.value.data;
        var newViewData = res.data;
        familyMemberModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            familyMemberModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }
}
