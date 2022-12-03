import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/book_store_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/book_delete_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/book_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/book_update_model.dart';

class BookApi {
  final DioClient dioClient;

  BookApi({required this.dioClient});

  Future<BookModel?> bookApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookStoreModel?> bookStoreApi(Map requestAll) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"];
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookStoreModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookUpdateModel?> bookUpdateApi(Map requestAll, id) async {
    try {
      // dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookUpdateModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<BookDeleteModel?> bookDeleteApi(Map requestAll, id) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = baseUrl + requestAll["action"] + '/' + id.toString();
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return BookDeleteModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
