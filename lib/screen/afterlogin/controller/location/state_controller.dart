import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/location/state_model.dart';

class StateController extends GetxController {
  var isLoadingStateApiCall = false.obs;
  var stateModel = StateModel().obs;
  var qState = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    stateApiCall({}, "", "");
  }

  void stateApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingStateApiCall.value = true;
    requestAll!.addAll({
      "action": pathStateAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).stateApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = stateModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = stateModel.value.data;
        var newViewData = res.data;
        stateModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            stateModel.value.data = viewData;
          }
        }
        isLoadingStateApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
