import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_member_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_member_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_member_request_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_member_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_update_model.dart';

class GroupApi {
  final DioClient dioClient;

  GroupApi({required this.dioClient});

  Future<GroupModel?> groupApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupStoreModel?> groupStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupUpdateModel?> groupUpdateApi(Map requestAll, int id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupDeleteModel?> groupDeleteApi(Map requestAll, int id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupMemberModel?> groupMemberApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupMemberModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupMemberStoreModel?> groupMemberStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupMemberStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupMemberDeleteModel?> groupMemberDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupMemberDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<GroupMemberRequestModel?> groupMemberRequestApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return GroupMemberRequestModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
