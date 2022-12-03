import 'package:dio/dio.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/remote_services/dio_exception.dart';
import 'package:vande_mission/screen/beforelogin/modal/add_society_modal.dart';
import 'package:vande_mission/screen/beforelogin/modal/country_modal.dart';
import 'package:vande_mission/screen/beforelogin/modal/district_modal.dart';
import 'package:vande_mission/screen/beforelogin/modal/society_modal.dart';
import 'package:vande_mission/screen/beforelogin/modal/state_modal.dart';
import 'package:vande_mission/screen/beforelogin/modal/village_modal.dart';

class LocationApi {
  final DioClient dioClient;

  LocationApi({required this.dioClient});

  Future<CountryModal?> getCountryAPI(
      Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : formData["action"] + "?q=$q";
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return CountryModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<StateModal?> getStateAPI(
      Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : formData["action"] + "?q=$q";
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return StateModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<DistrictModal?> getDistrictAPI(
      Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : formData["action"] + "?q=$q";
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return DistrictModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<VillageModal?> getVillageAPI(
      Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : formData["action"] + "?q=$q";
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return VillageModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<SocietyModal?> getSocietyAPI(
      Map formData, String nextpage, String q) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : formData["action"] + "?q=$q";
      var response = await dioClient.post(url, data: formData);
      var jsonString = response.data;
      return SocietyModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<AddSocietyModal?> addSociety(Map formData) async {
    try {
      dioClient.options.headers['content-Type'] =
          'application/x-www-form-urlencoded';
      var response = await dioClient.post(formData["action"], data: formData);
      var jsonString = response.data;
      return AddSocietyModal.fromJson(jsonString);
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      print(errorMessage);
      return null;
    } catch (e) {
      return null;
    }
  }
}
