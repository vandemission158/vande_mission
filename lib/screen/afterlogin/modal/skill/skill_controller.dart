import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/skill_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class SkillController extends GetxController {
  void skillApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathSkillAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await SkillApi(dioClient: dioClient).skillApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void skillStoreApiCall(Map<String, dynamic>? requestAll) async {
    List<String> skill = ['value1', 'value2', 'value3'];
    for (int i = 0; i < skill.length; i++) {
      requestAll!.addAll({"skill[$i]": skill[i]});
    }
    requestAll!.addAll({
      "action": pathSkillStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await SkillApi(dioClient: dioClient).skillStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
