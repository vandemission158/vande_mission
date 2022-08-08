import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/add_business_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/delete_business_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/update_business_model.dart';

class BusinessApi {
  final DioClient dioClient;

  BusinessApi({required this.dioClient});

  Future<BusinessModel?> businessApi(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BusinessModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddBusinessModel?> addBusinessApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddBusinessModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateBusinessModel?> updateBusinessApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateBusinessModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteBusinessModel?> deleteBusinessApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteBusinessModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
