import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/relation_model.dart';
import 'package:vande_mission/screen/afterlogin/user/model/family_model.dart';
import 'package:vande_mission/screen/afterlogin/user/model/family_relation_model.dart';
import 'package:vande_mission/screen/afterlogin/user/model/family_relation_store_model.dart';
import 'package:vande_mission/screen/afterlogin/user/model/user_update_model.dart';
import 'package:vande_mission/screen/common/model/family_member_model.dart';

class UserApi {
  final DioClient dioClient;

  UserApi({required this.dioClient});

  Future<FamilyModel?> familyApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return FamilyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UserUpdateModel?> userUpdateApi(Map requestAll, int id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return UserUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<RelationModel?> relationApi(Map<String, dynamic> requestAll, nextpage, q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      // var url = baseUrl + requestAll["action"];
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return RelationModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<FamilyMemberModel?> familyMemberApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return FamilyMemberModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<FamilyRelationModel?> familyRelationApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return FamilyRelationModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<FamilyRelationStoreModel?> familyRelationStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return FamilyRelationStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
