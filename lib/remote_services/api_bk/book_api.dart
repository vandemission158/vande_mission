import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/add_book_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/delete_book_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/book_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/book/update_book_model.dart';

class BookApi {
  final DioClient dioClient;

  BookApi({required this.dioClient});

  Future<BookModel?> bookApi(Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return BookModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<AddBookModel?> addBookApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return AddBookModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<UpdateBookModel?> updateBookApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return UpdateBookModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DeleteBookModel?> deleteBookApi(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      Response response =
          await dioClient.post(baseUrl + formData["action"], data: formData);
      var jsonString = response.data;
      return DeleteBookModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
