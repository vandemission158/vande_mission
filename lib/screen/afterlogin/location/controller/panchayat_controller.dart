import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/location/model/panchayat_model.dart';

class PanchayatController extends GetxController {
  var isLoadingPanchayatApiCall = false.obs;
  var panchayatModel = PanchayatModel().obs;
  var search = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    panchayatApiCall({}, "", "");
  }

  void panchayatApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingPanchayatApiCall.value = true;
    requestAll!.addAll({
      "action": pathPanchayatAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).panchayatApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = panchayatModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = panchayatModel.value.data;
        var newViewData = res.data;
        panchayatModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            panchayatModel.value.data = viewData;
          }
        }
        isLoadingPanchayatApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
