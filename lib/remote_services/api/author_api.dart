import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/author/model/author_model.dart';
import 'package:vande_mission/screen/afterlogin/author/model/author_store_model.dart';
import 'package:vande_mission/screen/afterlogin/author/model/author_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/author/model/author_update_model.dart';

class AuthorApi {
  final DioClient dioClient;

  AuthorApi({required this.dioClient});

  Future<AuthorModel?> authorApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return AuthorModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AuthorStoreModel?> authorStoreApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      Response response = await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AuthorStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AuthorUpdateModel?> authorUpdateApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return AuthorUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AuthorDeleteModel?> authorDeleteApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return AuthorDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
