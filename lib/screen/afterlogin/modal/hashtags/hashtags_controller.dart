import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/hashtags_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class HashtagsController extends GetxController {
  void hashtagsApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathHashtagsAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await HashtagsApi(dioClient: dioClient).hashtagsApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
