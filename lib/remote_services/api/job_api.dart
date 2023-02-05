import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_interest_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_interest_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_interest_store_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_store_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_model.dart';
import 'package:vande_mission/screen/afterlogin/job/model/job_update_model.dart';

class JobApi {
  final DioClient dioClient;

  JobApi({required this.dioClient});

  Future<JobModel?> jobApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<JobStoreModel?> jobStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<JobUpdateModel?> jobUpdateApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<JobDeleteModel?> jobDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

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
      var url = baseUrl + requestAll["action"] + '/' + id;
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return JobInterestDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
