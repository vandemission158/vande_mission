import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/bottom_sheet_list.dart';
import '../../../widgets/text_label.dart';

class AddAdsContrller extends GetxController {
  final dropdownSearchController = TextEditingController().obs;
  final businessTypeTextController = TextEditingController().obs;

  late final PageController scrollController;
  var focusNode = FocusNode();
  var hideKeyboard = false.obs;
  var showAppBar = false.obs;

  var items = ["Full Time", "Part Time", "Intership", "Agency & Partners"];

  // validation1() {
  //   if (famaily.text.isEmpty) {
  //     return "Please enetr fmaily";
  //   }
  //   null;
  // }

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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
}
