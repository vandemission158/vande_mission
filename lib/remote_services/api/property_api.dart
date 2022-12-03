import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/property_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/property_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/property_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/property/property_update_model.dart';

class PropertyApi {
  final DioClient dioClient;

  PropertyApi({required this.dioClient});

  Future<PropertyModel?> propertyApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return PropertyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PropertyStoreModel?> propertyStoreApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"];
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return PropertyStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PropertyUpdateModel?> propertyUpdateApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return PropertyUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PropertyDeleteModel?> propertyDeleteApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return PropertyDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
