import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/department/model/minister_model.dart';

class MinisterApi {
  final DioClient dioClient;

  MinisterApi({required this.dioClient});

  Future<MinisterModel?> ministerApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return MinisterModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
