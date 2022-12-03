import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_organiser_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_organiser_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_organiser_store_model.dart';

class EventOrganiserApi {
  final DioClient dioClient;

  EventOrganiserApi({required this.dioClient});

  Future<EventOrganiserModel?> eventOrganiserApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventOrganiserModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventOrganiserStoreModel?> eventOrganiserStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventOrganiserStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventOrganiserDeleteModel?> eventOrganiserDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventOrganiserDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
