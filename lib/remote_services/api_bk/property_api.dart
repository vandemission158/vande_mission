import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/add_property_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/delete_property_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/property_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/update_property_model.dart';

class PropertyApi {
  final DioClient dioClient;

  PropertyApi({required this.dioClient});

  Future<PropertyModel?> propertyApi(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return PropertyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddPropertyModel?> addPropertyApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddPropertyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdatePropertyModel?> updatePropertyApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdatePropertyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeletePropertyModel?> deletePropertyApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeletePropertyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
