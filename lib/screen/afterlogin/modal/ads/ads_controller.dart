import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/ads_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class AdsController extends GetxController {
  void adsApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathAdsAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathAdsStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathAdsUpdateAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathAdsDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
