import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/department/department_model.dart';

class DepartmentApi {
  final DioClient dioClient;

  DepartmentApi({required this.dioClient});

  Future<DepartmentModel?> departmentApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      print("hello");
      return DepartmentModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
