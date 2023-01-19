import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/model/book_chapter_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/model/book_chapter_model.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/model/book_chapter_store_model.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/model/book_chapter_update_model.dart';

class BookChapterApi {
  final DioClient dioClient;

  BookChapterApi({required this.dioClient});

  Future<BookChapterModel?> bookChapterApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookChapterModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookChapterStoreModel?> bookChapterStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookChapterStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookChapterUpdateModel?> bookChapterUpdateApi(Map requestAll, id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookChapterUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookChapterDeleteModel?> bookChapterDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookChapterDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
