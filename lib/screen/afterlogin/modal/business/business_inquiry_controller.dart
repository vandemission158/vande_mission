import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/business_inquiry_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class BusinessInquiryController extends GetxController {
  void businessInquiryApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathBusinessInquiryAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessInquiryApi(dioClient: dioClient).businessInquiryApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessInquiryStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBusinessInquiryStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessInquiryApi(dioClient: dioClient).businessInquiryStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessInquiryDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBusinessInquiryDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessInquiryApi(dioClient: dioClient).businessInquiryDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
