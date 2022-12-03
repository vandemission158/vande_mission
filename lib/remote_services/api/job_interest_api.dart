import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/job_interest_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/job_interest_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/job_interest_store_model.dart';

class JobInterestApi {
  final DioClient dioClient;

  JobInterestApi({required this.dioClient});

  Future<JobInterestModel?> jobInterestApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobInterestModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<JobInterestStoreModel?> jobInterestStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobInterestStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<JobInterestDeleteModel?> jobInterestDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobInterestDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
