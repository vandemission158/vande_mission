import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/product_interest_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class ProductInterestController extends GetxController {
  void productInterestApiCall(Map<String, dynamic>? requestAll, nextpage, q) async {
    requestAll!.addAll({
      "action": pathProductInterestAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductInterestApi(dioClient: dioClient).productInterestApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void productInterestStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathProductInterestStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductInterestApi(dioClient: dioClient).productInterestStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void productInterestDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathProductInterestDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductInterestApi(dioClient: dioClient).productInterestDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
