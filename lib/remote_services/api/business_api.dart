import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_update_model.dart';

class BusinessApi {
  final DioClient dioClient;

  BusinessApi({required this.dioClient});

  Future<BusinessModel?> businessApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessStoreModel?> businessStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessUpdateModel?> businessUpdateApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessDeleteModel?> businessDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
