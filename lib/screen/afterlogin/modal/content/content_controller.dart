import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/content_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class ContentController extends GetxController {
  void textApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathTextAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ContentApi(dioClient: dioClient).textApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void photoApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathPhotoAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ContentApi(dioClient: dioClient).photoApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void videoApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathVideoAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ContentApi(dioClient: dioClient).videoApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void musicApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathMusicAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ContentApi(dioClient: dioClient).musicApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void documentApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathDocumentAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ContentApi(dioClient: dioClient).documentApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
