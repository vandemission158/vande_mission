import 'package:dio/dio.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class GuestApi {
  late DioClient dioClient;
  // final DioClient dioClient;

  GuestApi({required this.dioClient});

  // Future<Response> loginApi(String name, String job) async {
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
