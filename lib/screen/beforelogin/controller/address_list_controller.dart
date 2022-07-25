import 'package:get/get.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../modal/address_list_modal.dart';

class AddressListController extends GetxController {
  var addressListModal = AddressListModal().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFamilyMemberAPICall("");
  }

  void getFamilyMemberAPICall(
    String nextpage,
  ) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var data = {
      "action": addressListAPI,
      "pagination": 1,
      "parent_id": 15,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.getAddressListAPI(data, nextpage);
      if (res != null) {
        var oldCurrentPage = addressListModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = addressListModal.value.data;
        var newViewData = res.data;
        addressListModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            addressListModal.value.data = viewData;
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
