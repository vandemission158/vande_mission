import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/group_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/screen/afterlogin/modal/AddGroupModal.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
import 'package:vande_mission/widgets/bottom_sheet_list.dart';
import 'package:vande_mission/widgets/text_label.dart';

class GroupController extends GetxController {
  final groupNameController = TextEditingController().obs;
  final aboutGroupController = TextEditingController().obs;
  final groupTypeController = TextEditingController().obs;
  final dropdownSearchText = TextEditingController().obs;
  late PageController scrollController;
  var groupType = ["Public", "Private"].obs;
  var showAppBar = false.obs;
  var focusNode = FocusNode();
  var hideKeyboard = false.obs;
  var category = "Address".obs;

  final addGroupModal = AddGroupModal().obs;

  late StreamSubscription<bool> subcription;

  @override
  void onInit() {
    super.onInit();
    focusNode.addListener(() {
      showAppBar.value = focusNode.hasFocus;
    });
    subcription = KeyboardVisibilityController().onChange.listen((isVisible) {
      if (kDebugMode) {
        print(isVisible ? "show" : "hide");
      }
      hideKeyboard.value = isVisible ? false : true;
      if (kDebugMode) {
        print("presss" + hideKeyboard.value.toString());
      }
    });
  }

  void onTapCategory() {
    category.value = "Category";
    print(category.value.toString());
  }

  void onTapAddress() {
    category.value = "Address";
    print(category.value.toString());
  }

  void sendGrouTypeData(int index) {
    groupTypeController.value.text = groupType[index].toString();
    Get.back();
  }

  Future<Object?> groupTypeBottomSheet(BuildContext context) {
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          //pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_country",
          // onChangedText: () => onchangeDistrictext,
          textController: dropdownSearchText.value,
          child: Obx(() {
            return ListView.builder(
                itemCount: groupType.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => sendGrouTypeData(index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextLabel(
                        title: groupType[index].toString(),
                        fontSize: 16,
                        color: darkGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                });
          }),
        );
      },
    );
  }

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
