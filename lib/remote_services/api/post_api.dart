import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_like_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_reply_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_reply_like_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_reply_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_reply_store.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_comment_store_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_like_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_store_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/post/model/post_model.dart';

class PostApi {
  final DioClient dioClient;

  PostApi({required this.dioClient});

  Future<PostModel?> postApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostStoreModel?> postStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostDeleteModel?> postDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostLikeModel?> postLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentModel?> postCommentApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentStoreModel?> postCommentStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentDeleteModel?> postCommentDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentLikeModel?> postCommentLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentReplyModel?> postCommentReplyApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentReplyModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentReplyStoreModel?> postCommentReplyStoreApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentReplyStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentReplyDeleteModel?> postCommentReplyDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentReplyDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PostCommentReplyLikeModel?> postCommentReplyLikeApi(Map requestAll) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PostCommentReplyLikeModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
