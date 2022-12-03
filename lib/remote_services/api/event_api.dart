import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_update_model.dart';

class EventApi {
  final DioClient dioClient;

  EventApi({required this.dioClient});

  Future<EventModel?> eventApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventStoreModel?> eventStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventUpdateModel?> eventUpdateApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventDeleteModel?> eventDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
