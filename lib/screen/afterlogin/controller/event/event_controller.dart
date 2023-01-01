import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/remote_services/api/event_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/widgets/bottom_sheet_list.dart';
import 'package:vande_mission/widgets/text_label.dart';

class EventController extends GetxController {
  var isChecked = false.obs;
  late final FocusNode focusNode;
  var showAppBar = false.obs;
  late StreamSubscription<bool> subcription;
  var hideKeyboard = false.obs;
  late PageController scrollController;
  var itemIncrese = 1.obs;
  var locationList = [
    {'name': "Bardon, QLD", 'image': familyImage1, 'chick': "32 chicks nearby"}
  ].obs;

  @override
  void onInit() {
    super.onInit();
    // focusNode.addListener(() {
    //   showAppBar.value = focusNode.hasFocus;
    // });
    // subcription = KeyboardVisibilityController().onChange.listen((isVisible) {
    //   if (kDebugMode) {
    //     print(isVisible ? "show" : "hide");
    //   }
    //   hideKeyboard.value = isVisible ? false : true;
    //   if (kDebugMode) {
    //     print("presss" + hideKeyboard.value.toString());
    //   }
    // });
  }

  Future<Object?> userList(BuildContext context) {
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          // pageController: scrollController,
          // focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_country",
          // onChangedText: () => onchangeDistrictext,
          // textController: dropdownSearchText.value,
          child: Obx(() {
            return ListView.builder(
                // controller: scrollController,
                itemCount: locationList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextLabel(
                        title: locationList[index]["name"].toString(),
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

  void eventApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathEventAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathEventStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathEventUpdateAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void eventDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathEventDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await EventApi(dioClient: dioClient).eventDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
