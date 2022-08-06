import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/remote_services/dio_exception.dart';
import 'package:vande_mission/screen/afterlogin/modal/logout_modal.dart';

class AuthApi {
  static late DioClient dioClient;
  // late Dio dio;

  AuthApi(action){
    DioClient(action);
  }

  // Future<Response> logoutApi(Map formData) async {
  //   try {
  //     final Response response = await dioClient.post(baseUrl + formData["action"], data: formData);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<LogoutModal?> logoutApi(Map formData) async {
    try {
      var response = await dioClient.post(baseUrl + formData["action"], data: formData);
      return LogoutModal.fromJson(response.data);
    } on DioError catch (e) {
      var errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  // Future<LogoutModal?> logoutApi(Map formData) async {
  //   try {
  //     var response = await dioClient.post(baseUrl + formData["action"], data: formData);
  //     if (response.statusCode == 200) {
  //       var jsonString = response.data;
  //       print("dsad"+response.statusCode.toString());
  //       return LogoutModal.fromJson(jsonString);
  //     }
  //   } on DioError catch (e) {
  //     print(e.response!.statusCode.toString());
  //     return null;
  //   }
  // }

  // Future<Response> addUserApi(String name, String job) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.users,
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<Response> getUsersApi() async {
  //   try {
  //     final Response response = await dioClient.get(Endpoints.users);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<Response> updateUserApi(int id, String name, String job) async {
  //   try {
  //     final Response response = await dioClient.put(
  //       Endpoints.users + '/$id',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> deleteUserApi(int id) async {
  //   try {
  //     await dioClient.delete(Endpoints.users + '/$id');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
