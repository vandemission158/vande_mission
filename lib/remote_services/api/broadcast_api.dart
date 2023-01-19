import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/broadcast/model/broadcast_store_model.dart';
import 'package:vande_mission/screen/afterlogin/broadcast/model/broadcast_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/broadcast/model/broadcast_model.dart';

class BroadcastApi {
  final DioClient dioClient;

  BroadcastApi({required this.dioClient});

  Future<BroadcastModel?> broadcastApi(Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + formData["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BroadcastModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BroadcastStoreModel?> broadcastStoreApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"];
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BroadcastStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BroadcastDeleteModel?> broadcastDeleteApi(Map formData, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + formData["action"] + '/' + id;
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BroadcastDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
