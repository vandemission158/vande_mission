import 'package:dio/dio.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/remote_services/dio_exception.dart';
import 'package:vande_mission/screen/beforelogin/modal/login_modal.dart';

class GuestApi {
  late DioClient dioClient;
  // final DioClient dioClient;

  GuestApi({required this.dioClient});

  Future<LoginModal?> loginAPI(Map formData) async {
    try {
      var url = formData["action"];
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return LoginModal.fromJson(jsonString);
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
