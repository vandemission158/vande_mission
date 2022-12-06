import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/business_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_model.dart';
import 'package:vande_mission/screen/afterlogin/view/choose_family_member.dart';

class BusinessController extends GetxController {
  var items = ["USA", "INDIA", "JAPAN"];
  var bussinessModel = BusinessModel().obs;
  var businessDataList = <Datum>[].obs;
  final searchText = TextEditingController().obs;

  String dropdownvalue = "INDIA";

  chooseFamilyScreen() {
    Get.to(() => ChosseFamilyMember());
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    businessApiCall({}, "", searchText.toString());
  }

  void businessApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathBusinessAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessApi(dioClient: dioClient).businessApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBusinessStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessApi(dioClient: dioClient).businessStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathBusinessStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessApi(dioClient: dioClient).businessUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void businessDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBusinessDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BusinessApi(dioClient: dioClient).businessDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
