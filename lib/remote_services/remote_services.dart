import 'package:dio/dio.dart';
import 'package:vande_mission/screen/login/modal/state_modal.dart';

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

  Future<StateModal?> getStateDetail(Map formData) async {
    try {
      var response = await dio.post(baseUrl + stateAPI, data: formData);
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
