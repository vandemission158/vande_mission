import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/skill/skill_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/skill/skill_store_model.dart';

class SkillApi {
  final DioClient dioClient;

  SkillApi({required this.dioClient});

  Future<SkillModel?> skillApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return SkillModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<SkillStoreModel?> skillStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return SkillStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
