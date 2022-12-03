import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/add_product_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/delete_product_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/product_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/product/update_product_model.dart';

class ProductApi {
  final DioClient dioClient;

  ProductApi({required this.dioClient});

  Future<ProductModel?> productApi(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return ProductModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddProductModel?> addProductApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddProductModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateProductModel?> updateProductApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateProductModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteProductModel?> deleteProductApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteProductModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
