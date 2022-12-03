import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/product_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class ProductController extends GetxController {
  void productApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathProductAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductApi(dioClient: dioClient).productApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void productStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathProductStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductApi(dioClient: dioClient).productStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void productUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathProductStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await ProductApi(dioClient: dioClient).productUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void productDeleteApiCall(int id) async {
    var data = {
      "action": 'afterlogin/product/delete',
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await ProductApi(dioClient: dioClient).productDeleteApi(data, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
