import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/minister_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/department/model/minister_model.dart';

class MinisterController extends GetxController {
  var isLoadingMinisterApiCall = false.obs;
  var ministerModel = MinisterModel().obs;
  var qMinister = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    ministerApiCall({}, "", "");
  }

  void ministerApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingMinisterApiCall.value = true;
    requestAll!.addAll({
      "action": pathMinisterAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await MinisterApi(dioClient: dioClient).ministerApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = ministerModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = ministerModel.value.data;
        var newViewData = res.data;
        ministerModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            ministerModel.value.data = viewData;
          }
        }
        isLoadingMinisterApiCall.value = false;
      }
    } catch (e) {
      print('test');
    }
  }
}
