import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/location/district_model.dart';

class DistrictController extends GetxController {
  var isLoadingDistrictApiCall = false.obs;
  var districtModel = DistrictModel().obs;
  var qDistrict = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    districtApiCall({}, "", "");
  }

  void districtApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingDistrictApiCall.value = true;
    requestAll!.addAll({
      "action": pathDistrictAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).districtApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = districtModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = districtModel.value.data;
        var newViewData = res.data;
        districtModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            districtModel.value.data = viewData;
          }
        }
        isLoadingDistrictApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
