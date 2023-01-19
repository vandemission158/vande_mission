import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/business/model/business_inquiry_store_model.dart';
import 'package:vande_mission/screen/afterlogin/business/model/business_inquiry_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/business/model/business_inquiry_model.dart';

class BusinessInquiryApi {
  final DioClient dioClient;

  BusinessInquiryApi({required this.dioClient});

  Future<BusinessInquiryModel?> businessInquiryApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessInquiryModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessInquiryStoreModel?> businessInquiryStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessInquiryStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessInquiryDeleteModel?> businessInquiryDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessInquiryDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
