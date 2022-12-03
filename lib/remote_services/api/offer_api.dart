import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/offer/offer_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/offer/offer_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/offer/offer_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/offer/offer_update_model.dart';

class OfferApi {
  final DioClient dioClient;

  OfferApi({required this.dioClient});

  Future<OfferModel?> offerApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return OfferModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<OfferStoreModel?> offerStoreApi(Map formData) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"];
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return OfferStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<OfferUpdateModel?> offerUpdateApi(Map formData, id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return OfferUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<OfferDeleteModel?> offerDeleteApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return OfferDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
