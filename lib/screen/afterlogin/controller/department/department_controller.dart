import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/department_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/department/department_model.dart';

class DepartmentController extends GetxController {
  var isLoadingDepartmentApiCall = false.obs;
  var departmentModel = DepartmentModel().obs;
  var search = "".obs;
  final searchText = TextEditingController().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    departmentApiCall({}, "", "");
  }

  void departmentApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    isLoadingDepartmentApiCall.value = true;
    requestAll!.addAll({
      "action": pathDepartmentAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      final res = await DepartmentApi(dioClient: dioClient).departmentApi(requestAll, nextpage, q);
      print("hello");
      if (res != null) {
        var oldCurrentPage = departmentModel.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = departmentModel.value.data;
        var newViewData = res.data;
        departmentModel.value = res;
        if (oldCurrentPage != null && newCurrentPage != null && oldCurrentPage < newCurrentPage && oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            departmentModel.value.data = viewData;
          }
        }
        isLoadingDepartmentApiCall.value = false;
      }
    } catch (e) {
      print('test');
      // TODO: handle exception, for example by showing an alert to the user
    }
  }
}
