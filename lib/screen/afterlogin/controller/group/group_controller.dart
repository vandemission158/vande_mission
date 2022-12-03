import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/group_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';

class GroupController extends GetxController {
  void groupApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathGroupAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      "division": 'Address', //Address,Category
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      print("Hello");
    }
  }

  void groupStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathGroupStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupStoreApi(requestAll);
      if (res != null) {
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      print("Hello");
    }
  }

  void groupUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathGroupUpdateAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      print("Hello");
    }
  }

  void groupDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathGroupDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupDeleteApi(requestAll, id);
      if (res != null) {
        print("Data Show:----" + res.id.toString());
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      print("Hello");
    }
  }

  void groupMemberApiCall(Map<String, dynamic>? requestAll, nextpage, q) async {
    requestAll!.addAll({
      "action": pathGroupMemberAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupMemberApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void groupMemberStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathGroupMemberStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupMemberStoreApi(requestAll);
      if (res != null) {
        print(res);
        Get.to(() => const HomePage());
      }
    } finally {
      print("Hello");
    }
  }

  void groupMemberDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathGroupMemberDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupMemberDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void groupMemberRequestApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathGroupMemberRequestAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await GroupApi(dioClient: dioClient).groupMemberRequestApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
