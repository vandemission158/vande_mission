import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/job_interest_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class JobInterestController extends GetxController {
  void jobInterestApiCall(Map<String, dynamic>? requestAll, nextpage, q) async {
    requestAll!.addAll({
      "action": pathJobInterestAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await JobInterestApi(dioClient: dioClient).jobInterestApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void jobInterestStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathJobInterestStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await JobInterestApi(dioClient: dioClient).jobInterestStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void jobInterestDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathJobInterestDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await JobInterestApi(dioClient: dioClient).jobInterestDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
