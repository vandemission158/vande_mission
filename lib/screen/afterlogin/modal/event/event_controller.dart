import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/event_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class EventController extends GetxController {
  void eventApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathEventAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathEventStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathEventUpdateAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathEventDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
