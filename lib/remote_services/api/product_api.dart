import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_update_model.dart';

class ProductApi {
  final DioClient dioClient;

  ProductApi({required this.dioClient});

  Future<ProductModel?> productApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<ProductStoreModel?> productStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<ProductUpdateModel?> productUpdateApi(Map requestAll, id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<ProductDeleteModel?> productDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return ProductDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
