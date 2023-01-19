import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/event/model/event_invitation_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/event/model/event_invitation_model.dart';
import 'package:vande_mission/screen/afterlogin/event/model/event_invitation_store_model.dart';

class EventInvitationApi {
  final DioClient dioClient;

  EventInvitationApi({required this.dioClient});

  Future<EventInvitationModel?> eventInvitationApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInvitationModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventInvitationStoreModel?> eventInvitationStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInvitationStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<EventInvitationDeleteModel?> eventInvitationDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return EventInvitationDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
