import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/ads_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/ads_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/ads_update_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/ads_model.dart';

class AdsApi {
  final DioClient dioClient;

  AdsApi({required this.dioClient});

  Future<AdsModel?> adsApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return AdsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AdsStoreModel?> adsStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return AdsStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AdsUpdateModel?> adsUpdateApi(Map requestAll, id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return AdsUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AdsDeleteModel?> adsDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return AdsDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
