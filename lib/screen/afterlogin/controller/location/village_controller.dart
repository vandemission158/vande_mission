import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/location/village_model.dart';

class VillageController extends GetxController {
  var isLoadingVillageApiCall = false.obs;
  var villageModel = VillageModel().obs;
  var qVillage = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    villageApiCall({}, "", "");
  }

  void villageApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingVillageApiCall.value = true;
    requestAll!.addAll({
      "action": pathVillageAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).villageApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = villageModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = villageModel.value.data;
        var newViewData = res.data;
        villageModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            villageModel.value.data = viewData;
          }
        }
        isLoadingVillageApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
