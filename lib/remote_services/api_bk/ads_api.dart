import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/add_ads_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/delete_ads_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/ads_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/ads/update_ads_model.dart';

class AdsApi {
  final DioClient dioClient;

  AdsApi({required this.dioClient});

  Future<AdsModel?> adsApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return AdsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddAdsModel?> addAdsApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddAdsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateAdsModel?> updateAdsApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateAdsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteAdsModel?> deleteAdsApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteAdsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
