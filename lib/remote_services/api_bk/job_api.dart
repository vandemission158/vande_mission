import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/add_job_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/delete_job_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/job_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/job/update_job_model.dart';

class JobApi {
  final DioClient dioClient;

  JobApi({required this.dioClient});

  Future<JobModel?> jobApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return JobModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddJobModel?> addJobApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddJobModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateJobModel?> updateJobApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateJobModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteJobModel?> deleteJobApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteJobModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
