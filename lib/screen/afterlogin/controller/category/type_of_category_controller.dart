import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/category_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/category/type_of_category_model.dart';

class TypeOfCategoryController extends GetxController {
  var isLoadingTypeOfCategoryApiCall = false.obs;
  var typeOfCategoryModel = TypeOfCategoryModel().obs;
  var qTypeOfCategory = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    typeOfCategoryApiCall({}, "", "");
  }

  void typeOfCategoryApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingTypeOfCategoryApiCall.value = true;
    requestAll!.addAll({
      "action": pathTypeOfCategoryAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await CategoryApi(dioClient: dioClient).typeOfCategoryApi(requestAll, nextpage, q);
      if (res != null) {
        var oldCurrentPage = typeOfCategoryModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = typeOfCategoryModel.value.data;
        var newViewData = res.data;
        typeOfCategoryModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            typeOfCategoryModel.value.data = viewData;
          }
        }
        isLoadingTypeOfCategoryApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
