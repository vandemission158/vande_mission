import 'package:dio/dio.dart';
import 'package:vande_mission/screen/afterlogin/modal/AddGroupModal.dart';
import 'package:vande_mission/screen/beforelogin/modal/login_modal.dart';

import '../helper/constant.dart';
import '../screen/beforelogin/modal/add_family_member_modal.dart';
import '../screen/beforelogin/modal/add_family_modal.dart';
import '../screen/beforelogin/modal/add_society_modal.dart';
import '../screen/beforelogin/modal/address_list_modal.dart';
import '../screen/beforelogin/modal/caste_modal.dart';
import '../screen/beforelogin/modal/country_modal.dart';
import '../screen/beforelogin/modal/district_modal.dart';
import '../screen/beforelogin/modal/family_member_modal.dart';
import '../screen/beforelogin/modal/society_modal.dart';
import '../screen/beforelogin/modal/state_modal.dart';
import '../screen/beforelogin/modal/village_modal.dart';

class RemoteService {
  late BaseOptions options;
  late Dio dio;

  RemoteService() {
    options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: timout, // 30 seconds
        receiveTimeout: timout // 30 seconds
        );
    dio = Dio(options);
    dio.options.headers["Authorization"] = "Bearer $authorizationToken";
  }

  Future<StateModal?> getStateAPI(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return StateModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<CountryModal?> getCountryAPI(
      Map formData, String nextpage, String q) async {
    try {
      print("remot file12324641312");
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";

      var response = await dio.post(url, data: formData);
      print(response);
      if (response.statusCode == 200) {
        print("remot file");
        var jsonString = response.data;

        return CountryModal.fromJson(jsonString);
      } else {
        print("remot fil errore");
        return null;
      }
    } on DioError catch (e) {
      print(e.response!.statusCode);
      print("remot die file");
      return null;
    }
  }

  Future<DistrictModal?> getDistrictAPI(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return DistrictModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<VillageModal?> getVillageAPI(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return VillageModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<SocietyModal?> getSocietyAPI(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return SocietyModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<AddSocietyModal?> addSociety(Map formData) async {
    try {
      var response =
          await dio.post(baseUrl + formData["action"], data: formData);
      if (response.statusCode == 200) {
        var jsonString = response.data;

        return AddSocietyModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<AddFamilyModal?> addFamilyApi(Map formData) async {
    try {
      var response =
          await dio.post(baseUrl + formData["action"], data: formData);
      if (response.statusCode == 200) {
        var jsonString = response.data;

        return AddFamilyModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<CasteModal?> getCasteAPI(
      Map formData, String nextpage, String q) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString() + "&q=$q"
          : baseUrl + formData["action"] + "?q=$q";
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return CasteModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<AddFamilyMemberModal?> addFamilyMemberAPI(
      String firstName,
      String lastName,
      String fatherName,
      String motherName,
      String genderName,
      String dob,
      String aadhaarCardNumber,
      String countryCode,
      String phoneNumber,
      String otpNumber,
      String imagePathFront,
      String imagePathBack) async {
    String fileNameFront = imagePathFront.split('/').last;
    String fileNameBack = imagePathBack.split('/').last;

    FormData data;

    data = FormData.fromMap({
      "family_id": 15,
      "first_name": firstName,
      "last_name": lastName,
      "middle_name": fatherName,
      "mother_name": motherName,
      "gender": genderName,
      "date_of_birth": dob,
      "aadhaar_card_number": aadhaarCardNumber,
      "phone_code": countryCode,
      "phone_number": phoneNumber,
      "phone_otp": otpNumber,
      "aadhaar_card_front_photo": await MultipartFile.fromFile(
        imagePathFront,
        filename: fileNameFront,
      ),

      "aadhaar_card_back_photo": await MultipartFile.fromFile(
        imagePathBack,
        filename: fileNameBack,
      ),
      "skip_phone_number": 0, // row_array,result_array
      "action": addFamilyMemberAPIKey
    });

    try {
      var response =
          await dio.post(baseUrl + addFamilyMemberAPIKey, data: data);
      if (response.statusCode == 200) {
        var jsonString = response.data;
        return AddFamilyMemberModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<FamilyMemberModal?> getFamilyMemberAPI(
    Map formData,
    String nextpage,
  ) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString()
          : baseUrl + formData["action"];
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return FamilyMemberModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<AddressListModal?> getAddressListAPI(
    Map formData,
    String nextpage,
  ) async {
    try {
      var url = nextpage.isNotEmpty
          ? nextpage.toString()
          : baseUrl + formData["action"];
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return AddressListModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

   Future<LoginModal?> loginAPI(
      Map formData) async {
    try {
      var url = baseUrl + formData["action"];
      var response = await dio.post(url, data: formData);

      if (response.statusCode == 200) {
        var jsonString = response.data;

        return LoginModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }

  Future<AddGroupModal?> addGroupyApi(Map formData) async {
    try {
      var response =
          await dio.post(baseUrl + formData["action"], data: formData);
      if (response.statusCode == 200) {
        var jsonString = response.data;

        return AddGroupModal.fromJson(jsonString);
      } else {
        return null;
      }
    } on DioError {
      return null;
    }
  }
}


