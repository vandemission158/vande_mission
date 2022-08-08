import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/add_group_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/delete_group_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/group_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/group/update_group_model.dart';

class GroupApi {
  final DioClient dioClient;

  GroupApi({required this.dioClient});

  Future<GroupModel?> groupApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return GroupModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddGroupModel?> addGroupApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/form-data';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddGroupModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateGroupModel?> updateGroupApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateGroupModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteGroupModel?> deleteGroupApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteGroupModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
