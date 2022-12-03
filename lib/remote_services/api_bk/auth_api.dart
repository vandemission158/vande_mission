import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/remote_services/dio_exception.dart';
import 'package:vande_mission/screen/afterlogin/modal/logout_modal.dart';

class AuthApi {
  final DioClient dioClient;

  AuthApi({required this.dioClient});

  Future<LogoutModal?> logoutApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      Constants.logout();
      return LogoutModal.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response != null) {
        // print(e.response!.statusCode);
        // print(e.response!.data);
        // print(e.response!.headers);
        // print(e.response!.requestOptions);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        // print(e.requestOptions);
        // print(e.message);
      }
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }
}
