import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/state_manager.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/image_constant.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/bottom_sheet_list.dart';
import '../../../widgets/text_label.dart';

class CreateEventFirstController extends GetxController {
  var isChecked = false.obs;
  late final FocusNode focusNode;
  var showAppBar = false.obs;
  late StreamSubscription<bool> subcription;
  var hideKeyboard = false.obs;
  late PageController scrollController;
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
}
