import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/location/model/sub_district_model.dart';

class SubDistrictController extends GetxController {
  var isLoadingSubDistrictApiCall = false.obs;
  var subDistrictModel = SubDistrictModel().obs;
  var qSubDistrict = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    subDistrictApiCall({}, "", "");
  }

  void subDistrictApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingSubDistrictApiCall.value = true;
    requestAll!.addAll({
      "action": pathSubDistrictAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).subDistrictApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = subDistrictModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = subDistrictModel.value.data;
        var newViewData = res.data;
        subDistrictModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            subDistrictModel.value.data = viewData;
          }
        }
        isLoadingSubDistrictApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
