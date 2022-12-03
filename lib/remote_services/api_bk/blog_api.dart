import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/add_blog_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/delete_blog_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/update_blog_model.dart';

class BlogApi {
  final DioClient dioClient;

  BlogApi({required this.dioClient});

  Future<BlogModel?> blogApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BlogModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddBlogModel?> addBlogApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddBlogModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateBlogModel?> updateBlogApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateBlogModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteBlogModel?> deleteBlogApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteBlogModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
