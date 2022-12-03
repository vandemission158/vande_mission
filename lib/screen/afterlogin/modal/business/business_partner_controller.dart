import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/business_partner_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class BusinessPartnerController extends GetxController {
  void businessPartnerApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathBusinessPartnerAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessPartnerApi(dioClient: dioClient).businessPartnerApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessPartnerStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBusinessPartnerStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessPartnerApi(dioClient: dioClient).businessPartnerStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessPartnerDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBusinessPartnerDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessPartnerApi(dioClient: dioClient).businessPartnerDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
