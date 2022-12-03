import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/hashtags/hashtags_model.dart';

class HashtagsApi {
  final DioClient dioClient;

  HashtagsApi({required this.dioClient});

  Future<HashtagsModel?> hashtagsApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return HashtagsModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }
}
