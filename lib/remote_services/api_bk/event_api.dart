import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/add_event_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/delete_event_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/event_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/event/update_event_model.dart';

class EventApi {
  final DioClient dioClient;

  EventApi({required this.dioClient});

  Future<EventModel?> eventApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return EventModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddEventModel?> addEventApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddEventModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateEventModel?> updateEventApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateEventModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteEventModel?> deleteEventApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteEventModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
