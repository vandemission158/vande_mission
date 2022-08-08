import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/broadcast/add_broadcast_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/broadcast/delete_broadcast_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/broadcast/broadcast_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/broadcast/update_broadcast_model.dart';

class BroadcastApi {
  final DioClient dioClient;

  BroadcastApi({required this.dioClient});

  Future<BroadcastModel?> broadcastApi(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BroadcastModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddBroadcastModel?> addBroadcastApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddBroadcastModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateBroadcastModel?> updateBroadcastApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateBroadcastModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteBroadcastModel?> deleteBroadcastApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteBroadcastModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
