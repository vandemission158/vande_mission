import 'package:dio/dio.dart';
import 'package:vande_mission/screen/login/modal/state_modal.dart';
import 'package:vande_mission/screen/login/modal/state_modal2.dart';

import '../helper/constant.dart';

class RemoteService {
  late BaseOptions options;
  late Dio dio;

  RemoteService() {
    options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: timout, // 30 seconds
        receiveTimeout: timout // 30 seconds
        );
    dio = Dio(options);
    dio.options.headers["Authorization"] = "Bearer $authorizationToken";
  }

  Future<StateModal?> getStateDetail(Map formData, String nextpage) async {
    try {
      print("url" + nextpage.toString());
      var response = await dio.post(nextpage.isNotEmpty ?nextpage.toString():
        baseUrl + stateAPI, data: formData);
      if (response.statusCode == 200) {
        var jsonString = response.data;

        return StateModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }
}
