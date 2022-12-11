import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/location/country_model.dart';

class CountryController extends GetxController {
  var isLoadingCountryApiCall = false.obs;
  var countryModel = CountryModel().obs;
  var qCountry = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    countryApiCall({}, "", "");
  }

  void countryApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingCountryApiCall.value = true;
    requestAll!.addAll({
      "action": pathCountryAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await LocationApi(dioClient: dioClient).countryApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = countryModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = countryModel.value.data;
        var newViewData = res.data;
        countryModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            countryModel.value.data = viewData;
          }
        }
        isLoadingCountryApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
