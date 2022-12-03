import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/event_organiser_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class EventOrganiserController extends GetxController {
  void eventOrganiserApiCall(Map<String, dynamic>? requestAll, nextpage, q) async {
    requestAll!.addAll({
      "action": pathEventOrganiserAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventOrganiserApi(dioClient: dioClient).eventOrganiserApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventOrganiserStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathEventOrganiserStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventOrganiserApi(dioClient: dioClient).eventOrganiserStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventOrganiserDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathEventOrganiserDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventOrganiserApi(dioClient: dioClient).eventOrganiserDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
