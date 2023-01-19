import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/event_interest_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class EventInterestController extends GetxController {
  void eventInterestApiCall(Map<String, dynamic>? requestAll, nextpage, q) async {
    requestAll!.addAll({
      "action": pathEventInterestAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventInterestApi(dioClient: dioClient).eventInterestApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventInterestStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathEventInterestStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventInterestApi(dioClient: dioClient).eventInterestStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventInterestDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathEventInterestDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventInterestApi(dioClient: dioClient).eventInterestDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
