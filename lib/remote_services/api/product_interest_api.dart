import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_interest_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_interest_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_interest_store_model.dart';

class ProductInterestApi {
  final DioClient dioClient;

  ProductInterestApi({required this.dioClient});

  Future<ProductInterestModel?> productInterestApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductInterestModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<ProductInterestStoreModel?> productInterestStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductInterestStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<ProductInterestDeleteModel?> productInterestDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductInterestDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
