import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/ads_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';
import 'package:vande_mission/widgets/bottom_sheet_list.dart';
import 'package:vande_mission/widgets/text_label.dart';

class AdsController extends GetxController {
  final dropdownSearchController = TextEditingController().obs;
  final businessTypeTextController = TextEditingController().obs;

  late final PageController scrollController;
  var focusNode = FocusNode();
  var hideKeyboard = false.obs;
  var showAppBar = false.obs;

  var items = ["Full Time", "Part Time", "Intership", "Agency & Partners"];

  void sendCountryData(int index) {
    businessTypeTextController.value.text = items[index];
    Get.back();
  }

  Future<Object?> businessTypeBottom(BuildContext context) {
    print("Hello country");
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
            // pageController: scrollController,
            focusNode: focusNode,
            hide: hideKeyboard.value,
            show: showAppBar.value,
            hintText: "search_country",
            // onChangedText: () => onchangeDistrictext,
            textController: dropdownSearchController.value,
            child: ListView.builder(
                // controller: scrollController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => sendCountryData(index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextLabel(
                        title: items[index],
                        fontSize: 16,
                        color: darkGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }));
      },
    );
  }

  void adsApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathAdsAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": 'suggetion',
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathAdsStoreAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathAdsUpdateAPI,
      "auth_key": authorizationKey,
    });

    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void adsDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathAdsDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await AdsApi(dioClient: dioClient).adsDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
