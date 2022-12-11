import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/location/society_model.dart';

class SocietyController extends GetxController {
  var isLoadingSocietyApiCall = false.obs;
  var societyModel = SocietyModel().obs;
  var qSociety = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    societyApiCall({}, "", "");
  }

  void societyApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingSocietyApiCall.value = true;
    requestAll!.addAll({
      "action": pathSocietyAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).societyApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = societyModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = societyModel.value.data;
        var newViewData = res.data;
        societyModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            societyModel.value.data = viewData;
          }
        }
        isLoadingSocietyApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
