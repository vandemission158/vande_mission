import 'package:dio/dio.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/remote_services/dio_exception.dart';
import 'package:vande_mission/screen/afterlogin/location/model/country_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/district_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/panchayat_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/society_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/state_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/sub_district_model.dart';
import 'package:vande_mission/screen/afterlogin/location/model/village_model.dart';

class LocationApi {
  final DioClient dioClient;

  LocationApi({required this.dioClient});

  Future<CountryModel?> countryApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return CountryModel.fromJson(jsonString);
    } on DioError {
      return null;
    }
    // on DioError catch (e) {
    //   // final errorMessage = DioException.fromDioError(e).toString();
    //   // print(errorMessage);
    //   return null;
    // } catch (e) {
    //   return null;
    // }
  }

  Future<StateModel?> stateApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return StateModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<DistrictModel?> districtApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return DistrictModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<SubDistrictModel?> subDistrictApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return SubDistrictModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<VillageModel?> villageApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return VillageModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<SocietyModel?> societyApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      var response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return SocietyModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<PanchayatModel?> panchayatApi(Map requestAll, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty ? nextpage.toString() + "&q=$q" : baseUrl + requestAll["action"] + "?q=$q";
      Response response = await dioClient.post(url, data: requestAll);
      var jsonString = response.data;
      return PanchayatModel.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }
}
