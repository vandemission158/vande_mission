import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/afterlogin/modal/AddGroupModal.dart';

import '../../../helper/app_color.dart';
import '../../../remote_services/remote_services.dart';
import '../../../widgets/bottom_sheet_list.dart';
import '../../../widgets/text_label.dart';

class CreateNewGroupController extends GetxController {
  final groupNameController = TextEditingController().obs;
  final aboutGroupController = TextEditingController().obs;
  final groupTypeController = TextEditingController().obs;
  final dropdownSearchText = TextEditingController().obs;
  late PageController scrollController;
  var groupType = ["Public", "Private"].obs;
  var showAppBar = false.obs;
  var focusNode = FocusNode();
  var hideKeyboard = false.obs;
  var category = "".obs;

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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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

  void addGroupAPICall(
      int countryId,
      int stateId,
      int districtId,
      int villageId,
      int subDistrictId,
      int societyId,
      int casteId,
      String name,
      String about,
      String type) async {
    var data = {
      "auth_key": authKey,
      'division': category.value.toString(),
      "country_id": countryId,
      "state_id": stateId,
      "district_id": districtId,
      "village_id": villageId,
      "subdistrict_id": subDistrictId,
      "society_id": societyId,
      "name": name,
      "about": about,
      "type": type,
      "action": addGroupKey,
      "caste_id": casteId,
      "owner_id": 2,
    };

    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.addGroupyApi(data);
      if (res != null) {
        print("not call");
        addGroupModal.value = res;
        if (addGroupModal.value.id != null) {
          print("family id " + addGroupModal.value.id.toString());
          print("Data Successfully Inserted");
          //Get.to(() => LetsAddFamily());
        } else {
          print("data not inseted");
        }
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }
}
