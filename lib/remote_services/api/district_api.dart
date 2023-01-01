
import 'package:dio/dio.dart';
import 'package:vande_mission/screen/beforelogin/modal/district_modal.dart';

import '../../helper/constant.dart';
import '../dio_client.dart';

class DistrictAPI {
  final DioClient dioClient;

  DistrictAPI({required this.dioClient});

  Future<DistrictModal?> districtApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return DistrictModal.fromJson(jsonString);
    } on DioError {
      return null;
    }
  }}