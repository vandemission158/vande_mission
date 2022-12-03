import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/bank_detail/bank_detail_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/bank_detail/bank_detail_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/bank_detail/bank_detail_store_model.dart';

class BankDetailApi {
  final DioClient dioClient;

  BankDetailApi({required this.dioClient});

  Future<BankDetailModel?> bankDetailApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BankDetailModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BankDetailStoreModel?> bankDetailStoreApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      Response response = await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return BankDetailStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BankDetailStoreModel?> bankDetailUpdateApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BankDetailStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BankDetailDeleteModel?> bankDetailDeleteApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BankDetailDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
