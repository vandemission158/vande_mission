import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_partner_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_partner_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_partner_model.dart';

class BusinessPartnerApi {
  final DioClient dioClient;

  BusinessPartnerApi({required this.dioClient});

  Future<BusinessPartnerModel?> businessPartnerApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessPartnerModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessPartnerStoreModel?> businessPartnerStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessPartnerStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BusinessPartnerDeleteModel?> businessPartnerDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BusinessPartnerDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
