import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/bank_detail_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class BankDetailController extends GetxController {
  void bankDetailApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/bankdetail',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await BankDetailApi(dioClient: dioClient).bankDetailApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void bankDetailStoreApiCall() async {
    var data = {
      "action": 'afterlogin/bankdetail/store',
      "auth_key": authorizationKey,
      'title': 'BankDetail', //BankDetail Or Company
      "message": "BankDetail 1",
      "photo": [],
      "bankDetail_type": "Family", //'Member','Family','Group','Village','Society','Punchayat','SubDistrict','District','State'
      "bankDetail_alert": [],
      // "result": "row_array",
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await BankDetailApi(dioClient: dioClient).bankDetailStoreApi(data);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void bankDetailUpdateApiCall(int id) async {
    var data = {
      "action": 'afterlogin/bankdetail/update',
      "auth_key": authorizationKey,
      'title': 'BankDetail', //BankDetail Or Company
      "message": "BankDetail 1",
      "photo": [],
      "bankDetail_type": "Family", //'Member','Family','Group','Village','Society','Punchayat','SubDistrict','District','State'
      "bankDetail_alert": [],
      // "result": "row_array",
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await BankDetailApi(dioClient: dioClient).bankDetailUpdateApi(data, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void bankDetailDeleteApiCall(int id) async {
    var data = {
      "action": 'afterlogin/bankdetail/delete',
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await BankDetailApi(dioClient: dioClient).bankDetailDeleteApi(data, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
