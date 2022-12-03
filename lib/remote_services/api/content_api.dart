import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/content/document_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/content/music.model.dart';
import 'package:vande_mission/screen/afterlogin/modal/content/photo_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/content/text_model.dart';
import 'package:vande_mission/screen/afterlogin/modal/content/video_model.dart';

class ContentApi {
  final DioClient dioClient;

  ContentApi({required this.dioClient});

  Future<TextModel?> textApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return TextModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<PhotoModel?> photoApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PhotoModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<VideoModel?> videoApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return VideoModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<MusicModel?> musicApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return MusicModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }

  Future<DocumentModel?> documentApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return DocumentModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
