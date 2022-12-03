import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/mention_api.dart';
import 'package:vande_mission/remote_services/api/user_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class UserController extends GetxController {
  void userUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    // Field Name: 'name' => json_object(fname, lname, mname)
    // 'first_name',
    // 'last_name',
    // 'middle_name',
    // 'gender',
    // 'date_of_birth',
    // 'aadhaar_card_number',
    // 'aadhaar_card_front_photo',
    // 'aadhaar_card_back_photo',
    // 'is_login',
    // 'phone_number',
    // 'phone_number_otp',
    // 'phone_number_verified',
    // 'phone_number_verified_at',
    // 'password',
    // 'email',
    // 'email_otp',
    // 'email_verified',
    // 'email_verified_at',
    // 'profile_photo',
    // 'nri',
    // 'nri_address',
    // 'nri_pincode',
    // 'pan_card_front_photo',
    // 'pan_card_back_photo',
    // 'education',
    // 'education_year',
    requestAll!.addAll({
      "action": pathUserUpdateAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      await UserApi(dioClient: dioClient).userUpdateApi(requestAll, id);
    } finally {
      // print("Hello");
    }
  }

  void familyApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathFamilyAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "whereNotIn": ''
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await UserApi(dioClient: dioClient).familyApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void relationApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathRelationAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await UserApi(dioClient: dioClient).relationApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void familymemberApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathFamilyMemberAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
      "family_id": 1,
      "type": 'Owner',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await UserApi(dioClient: dioClient).familyMemberApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void familyRelationApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathFamilyRelationAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await UserApi(dioClient: dioClient).familyRelationApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void familyRelationStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathFamilyRelationStoreAPI,
      "auth_key": authorizationKey,
      "step": 1,
      "member_id": 2,
      "relation_id": 8,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await UserApi(dioClient: dioClient).familyRelationStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void mentionApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathMentionAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await MentionApi(dioClient: dioClient).mentionApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
