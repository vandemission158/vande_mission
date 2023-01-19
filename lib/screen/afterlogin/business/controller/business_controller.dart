import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/business_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/business/model/business_model.dart';
import 'package:vande_mission/screen/afterlogin/controller/category/type_of_category_controller.dart';

class BusinessController extends GetxController {
  final TypeOfCategoryController typeOfCategoryController = Get.put(TypeOfCategoryController());
  var isLoadingBusinessApiCall = false.obs;
  var bussinessModel = BusinessModel().obs;
  var search = "".obs;
  final searchText = TextEditingController().obs;

  String dropdownvalue = "INDIA";
  var items = ["USA", "INDIA", "JAPAN"];

  @override
  void onInit() {
    super.onInit();
    typeOfCategoryController.typeOfCategoryApiCall({"type": "Business"}, "", "");
    businessApiCall({}, "", "");
  }

  void businessApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingBusinessApiCall.value = true;
    requestAll!.addAll({
      "action": pathBusinessAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await BusinessApi(dioClient: dioClient).businessApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = bussinessModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = bussinessModel.value.data;
        var newViewData = res.data;
        bussinessModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            bussinessModel.value.data = viewData;
          }
        }
        isLoadingBusinessApiCall.value = false;
      }
    } catch (e) {
      print('test');
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
      "action": pathBusinessUpdateAPI,
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

  void businessLogoApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathBusinessLogoAPI,
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