import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_like_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_reply_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_reply_like_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_reply_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_reply_store.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_comment_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_like_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/blog/blog_update_model.dart';

class BlogApi {
  final DioClient dioClient;

  BlogApi({required this.dioClient});

  Future<BlogModel?> blogApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogStoreModel?> blogStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'multipart/form-data';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogUpdateModel?> blogUpdateApi(Map requestAll, int id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'multipart/form-data';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogDeleteModel?> blogDeleteApi(Map requestAll, int id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogLikeModel?> blogLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentModel?> blogCommentApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentStoreModel?> blogCommentStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentDeleteModel?> blogCommentDeleteApi(Map requestAll, int id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentLikeModel?> blogCommentLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentReplyModel?> blogCommentReplyApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentReplyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentReplyStoreModel?> blogCommentReplyStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentReplyStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentReplyDeleteModel?> blogCommentReplyDeleteApi(Map requestAll, int id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BlogCommentReplyDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BlogCommentReplyLikeModel?> blogCommentReplyLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      Response response = await dioClient.post(baseUrl + requestAll["action"], data: requestAll);
      var jsonString = response.data;
      return BlogCommentReplyLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
