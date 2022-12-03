import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_interest_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_interest_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_interest_store_model.dart';

class EventInterestApi {
  final DioClient dioClient;

  EventInterestApi({required this.dioClient});

  Future<EventInterestModel?> eventInterestApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInterestModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventInterestStoreModel?> eventInterestStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInterestStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventInterestDeleteModel?> eventInterestDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInterestDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
