import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';

import 'package:vande_mission/screen/beforelogin/view/lets_add_family.dart';

import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../../widgets/bottom_sheet_list.dart';
import '../../../widgets/text_label.dart';
import '../modal/add_family_modal.dart';
import '../modal/add_society_modal.dart';
import '../modal/caste_modal.dart';
import '../modal/country_modal.dart';
import '../modal/district_modal.dart';
import '../modal/society_modal.dart';
import '../modal/state_modal.dart';
import '../modal/village_modal.dart';

class RegisterFamilyController extends GetxController {
  late PageController scrollController;
  late StreamSubscription<bool> subcription;
  final dropdownSearchText = TextEditingController().obs;
  final countryTextController = TextEditingController().obs;
  final stateTextController = TextEditingController().obs;
  final districtTextController = TextEditingController().obs;
  final villageTextController = TextEditingController().obs;
  final societyTextController = TextEditingController().obs;
  final addSocietyTextController = TextEditingController().obs;
  final areaTextController = TextEditingController().obs;
  final pincodeTextController = TextEditingController().obs;
  final casteTextController = TextEditingController().obs;
  final houseNumberTextController = TextEditingController().obs;

  var focusNode = FocusNode();
  var stateModal = StateModal().obs;
  var countryModal = CountryModal().obs;
  var districtModal = DistrictModal().obs;
  var villageModal = VillageModal().obs;
  var societyModal = SocietyModal().obs;
  var addSocietyModal = AddSocietyModal().obs;
  var addFamilyModal = AddFamilyModal().obs;
  var casteModal = CasteModal().obs;

  var hasNextPage = false.obs;
  var isLoading = false.obs;
  var loadMoreData = false.obs;
  var showAppBar = false.obs;
  var hideKeyboard = false.obs;
  var showSocityTextField = false.obs;
  var nextpage = "".obs;
  var pageNumber = 1.obs;
  var countryID = 0.obs;
  var stateID = 0.obs;
  var districtID = 0.obs;
  var villageID = 0.obs;
  var subDistrictID = 0.obs;
  var societyID = 0.obs;
  var casteID = 0.obs;

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

  void loadMoreStateApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (stateModal.value.nextPageUrl != "")
                  {
                    getStateAPICall(
                        countryID.value,
                        stateModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void loadMoreCountryApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (countryModal.value.nextPageUrl != "")
                  {
                    getCountryAPICall(countryModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void loadMoreDistrictApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (districtModal.value.nextPageUrl != "")
                  {
                    getDistrictAPICall(
                        countryID.value,
                        stateID.value,
                        districtModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void loadMoreVillageApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (villageModal.value.nextPageUrl != "")
                  {
                    getVillageAPICall(
                        countryID.value,
                        stateID.value,
                        districtID.value,
                        villageModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void loadMoreSocietyApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (societyModal.value.nextPageUrl != "")
                  {
                    getSocietyAPICall(
                        countryID.value,
                        stateID.value,
                        districtID.value,
                        villageID.value,
                        societyModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void loadMoreCasteApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (casteModal.value.nextPageUrl != "")
                  {
                    getCasteAPICall(societyModal.value.nextPageUrl.toString(),
                        dropdownSearchText.value.text),
                  }
              }
          });
  }

  void fetchCountryAPICall() {
    getCountryAPICall("", dropdownSearchText.value.text);
    loadMoreCountryApicall();
    dropdownSearchText.value.clear();
  }

  void fetchStateAPICall() {
    getStateAPICall(countryID.value, "", dropdownSearchText.value.text);
    loadMoreStateApicall();
    dropdownSearchText.value.clear();
  }

  void fetchDistrictAPICall() {
    getDistrictAPICall(
        countryID.value, stateID.value, "", dropdownSearchText.value.text);
    loadMoreDistrictApicall();
    dropdownSearchText.value.clear();
  }

  void fetchVillageAPICall() {
    getVillageAPICall(countryID.value, stateID.value, districtID.value, "",
        dropdownSearchText.value.text);
    loadMoreVillageApicall();
    dropdownSearchText.value.clear();
  }

  void fetchSocietyAPICall() {
    getSocietyAPICall(countryID.value, stateID.value, districtID.value,
        villageID.value, "", dropdownSearchText.value.text);
    loadMoreSocietyApicall();
    dropdownSearchText.value.clear();
  }

  void fetchCasteAPICall() {
    getCasteAPICall("", dropdownSearchText.value.text);
    loadMoreCasteApicall();
    dropdownSearchText.value.clear();
  }

  void sendCountryData(int index) {
    countryTextController.value.text =
        countryModal.value.data![index].name.toString();
    countryID.value = countryModal.value.data![index].id!.toInt();
    Get.back();
  }

  void sendStateData(int index) {
    stateTextController.value.text =
        stateModal.value.data![index].name.toString();
    stateID.value = stateModal.value.data![index].id!.toInt();
    Get.back();
  }

  void sendDistrictData(int index) {
    districtTextController.value.text =
        districtModal.value.data![index].name.toString();
    districtID.value = districtModal.value.data![index].id!.toInt();

    Get.back();
  }

  void sendVillageData(int index) {
    villageTextController.value.text =
        villageModal.value.data![index].name.toString();
    villageID.value = villageModal.value.data![index].id!.toInt();
    subDistrictID.value =
        villageModal.value.data![index].subdistrict!.id!.toInt();
    Get.back();
  }

  void sendSocietyData(int index) {
    societyTextController.value.text =
        societyModal.value.data![index].name.toString();
    societyID.value = societyModal.value.data![index].id!.toInt();
    Get.back();
  }

  void sendCasteData(int index) {
    casteTextController.value.text =
        casteModal.value.data![index].name.toString();
    casteID.value = casteModal.value.data![index].id!.toInt();
    Get.back();
  }

  void onchangeCountryText() {
    getCountryAPICall("", dropdownSearchText.value.text);
  }

  void onchangeStateText() {
    getStateAPICall(countryID.value, "", dropdownSearchText.value.text);
  }

  void onchangeDistrictext() {
    getDistrictAPICall(
        countryID.value, stateID.value, "", dropdownSearchText.value.text);
  }

  void onchangeVillagetext() {
    getVillageAPICall(countryID.value, stateID.value, districtID.value, "",
        dropdownSearchText.value.text);
  }

  void onchangeSocietytext() {
    getSocietyAPICall(countryID.value, stateID.value, districtID.value,
        villageID.value, "", dropdownSearchText.value.text);
  }

  void onchangeCastetext() {
    getCasteAPICall("", dropdownSearchText.value.text);
  }

  void onTapNext() {
    addFamilyAPICall(
        countryID.value,
        stateID.value,
        districtID.value,
        villageID.value,
        subDistrictID.value,
        societyID.value,
        casteID.value,
        areaTextController.value.text,
        pincodeTextController.value.text,
        houseNumberTextController.value.text);
  }

  void onTapNewSociety() {
    showSocityTextField(true);
    addSocietyTextController.value.clear();
    Get.back();
  }

  void onTapAddSociety() {
    addSocietyAPICall(
        countryID.value,
        stateID.value,
        districtID.value,
        villageID.value,
        subDistrictID.value,
        addSocietyTextController.value.text);
  }

  Future<Object?> stateBottomSheet(BuildContext context) {
    fetchStateAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_state",
          onChangedText: () => onchangeStateText(),
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (stateModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: stateModal.value.data!.length +
                      (stateModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < stateModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendStateData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextLabel(
                            title: stateModal.value.data?[index].name,
                            fontSize: 16,
                            color: darkGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
      },
    );
  }

  Future<Object?> countryBottomSheet(BuildContext context) {
    print("Hello country");
    fetchCountryAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_country",
          onChangedText: () => onchangeDistrictext,
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (countryModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: countryModal.value.data!.length +
                      (countryModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < countryModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendCountryData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextLabel(
                            title:
                                countryModal.value.data![index].name.toString(),
                            fontSize: 16,
                            color: darkGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
      },
    );
  }

  Future<Object?> districtBottomSheet(BuildContext context) {
    fetchDistrictAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "Search District",
          onChangedText: () => onchangeDistrictext(),
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (districtModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: districtModal.value.data!.length +
                      (districtModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < districtModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendDistrictData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextLabel(
                            title: districtModal.value.data?[index].name,
                            fontSize: 16,
                            color: darkGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
        // Obx(
        //   () => GestureDetector(
        //     onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        //     child: ClipRRect(
        //       borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        //       child: Container(
        //           height: !showAppBar.value || hideKeyboard.value
        //               ? Constants.height(context) * 0.50
        //               : Constants.height(context) * 0.70,
        //           decoration: const BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.only(),
        //           ),
        //           child: BottomSheetList(
        //             pageController: scrollController,
        //             focusNode: focusNode,
        //             hintText: "Search District",
        //             child: Obx(() {
        //               if (districtModal.value.data == null) {
        //                 return const Center(child: CircularProgressIndicator());
        //               } else {
        //                 int? fetchApiDataLength =
        //                     districtModal.value.data?.length;

        //                 return ListView.builder(
        //                     controller: scrollController,
        //                     itemCount: districtModal.value.data!.length +
        //                         (districtModal.value.nextPageUrl != null
        //                             ? 1
        //                             : 0),
        //                     itemBuilder: (context, index) {
        //                       if (index < fetchApiDataLength!) {
        //                         return GestureDetector(
        //                           onTap: () => sendCountryData(index),
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 20, vertical: 10),
        //                             child: TextLabel(
        //                               title:
        //                                   districtModal.value.data?[index].name,
        //                               fontSize: 16,
        //                               color: darkGrey,
        //                               fontWeight: FontWeight.w400,
        //                             ),
        //                           ),
        //                         );
        //                       } else {
        //                         return const Center(
        //                             child: CircularProgressIndicator());
        //                       }
        //                     });
        //               }
        //             }),
        //           )
        //           // Scaffold(
        //           //   body: Column(
        //           //     mainAxisSize: MainAxisSize.min,
        //           //     children: [
        //           //       TextField(
        //           //         controller: dropdownSearchText.value,
        //           //         onChanged: (text) {
        //           //           onchangeDistrictext();
        //           //         },
        //           //         focusNode: focusNode,
        //           //         decoration: InputDecoration(
        //           //             contentPadding: const EdgeInsets.symmetric(
        //           //                 horizontal: 15, vertical: 20),
        //           //             focusedBorder: const UnderlineInputBorder(
        //           //               borderSide:
        //           //                   BorderSide(color: Colors.transparent),
        //           //             ),
        //           //             enabledBorder: const UnderlineInputBorder(
        //           //               borderRadius:
        //           //                   BorderRadius.all(Radius.circular(15)),
        //           //               borderSide:
        //           //                   BorderSide(color: Colors.transparent),
        //           //             ),
        //           //             border: const OutlineInputBorder(
        //           //               borderRadius:
        //           //                   BorderRadius.all(Radius.circular(15)),
        //           //             ),
        //           //             filled: true,
        //           //             hintStyle: const TextStyle(color: grey),
        //           //             hintText: "area".tr,
        //           //             fillColor: lightWhite),
        //           //       ),
        //           //       Expanded(child: Obx(() {
        //           //         if (districtModal.value.data == null) {
        //           //           if (kDebugMode) {
        //           //             print("Firsttime");
        //           //           }
        //           //           return const Center(
        //           //               child: CircularProgressIndicator());
        //           //         } else {
        //           //           int? fetchApiDataLength =
        //           //               districtModal.value.data?.length;

        //           //           return ListView.builder(
        //           //               controller: scrollController,
        //           //               itemCount: districtModal.value.data!.length +
        //           //                   (districtModal.value.nextPageUrl != null
        //           //                       ? 1
        //           //                       : 0),
        //           //               itemBuilder: (context, index) {
        //           //                 if (index < fetchApiDataLength!) {
        //           //                   return GestureDetector(
        //           //                     onTap: () => sendDistrictData(index),
        //           //                     child: Padding(
        //           //                       padding: const EdgeInsets.symmetric(
        //           //                           horizontal: 20, vertical: 10),
        //           //                       child: TextLabel(
        //           //                         title: districtModal
        //           //                             .value.data?[index].name,
        //           //                         fontSize: 16,
        //           //                         color: darkGrey,
        //           //                         fontWeight: FontWeight.w400,
        //           //                       ),
        //           //                     ),
        //           //                   );
        //           //                 } else {
        //           //                   if (kDebugMode) {
        //           //                     print('loader');
        //           //                   }
        //           //                   return const Center(
        //           //                       child: CircularProgressIndicator());
        //           //                 }
        //           //               });
        //           //         }
        //           //       })),
        //           //     ],
        //           //   ),
        //           // )
        //           ),
        //     ),
        //   ),
        // );
      },
    );
  }

  Future<Object?> villageBottomSheet(BuildContext context) {
    fetchVillageAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_village",
          onChangedText: () => onchangeVillagetext(),
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (villageModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: villageModal.value.data!.length +
                      (villageModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < villageModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendVillageData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextLabel(
                                title: villageModal.value.data?[index].name,
                                fontSize: 16,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                              TextLabel(
                                title: villageModal
                                    .value.data?[index].subdistrict!.name
                                    .toString(),
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
      },
    );
  }

  Future<Object?> societyBottomSheet(BuildContext context) {
    fetchSocietyAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "search_village",
          onChangedText: () => onchangeSocietytext(),
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (societyModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            }
            if (societyModal.value.data!.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(information),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: TextLabel(
                            title: "if_the_society",
                            fontSize: 12,
                            color: grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          onTapNewSociety();
                        },
                        child: const TextLabel(
                          title: 'add_new_society',
                          color: orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: societyModal.value.data!.length +
                      (societyModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < societyModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendSocietyData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextLabel(
                                title: societyModal.value.data?[index].name,
                                fontSize: 16,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                              // TextLabel(
                              //   title: societyModal
                              //       .value.data?[index].subdistrict!.name
                              //       .toString(),
                              //   fontSize: 14,
                              //   color: grey,
                              //   fontWeight: FontWeight.w400,
                              // ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
      },
    );
  }

  Future<Object?> casteBottomSheet(BuildContext context) {
    fetchCasteAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetList(
          pageController: scrollController,
          focusNode: focusNode,
          hide: hideKeyboard.value,
          show: showAppBar.value,
          hintText: "Search Caste",
          onChangedText: () => onchangeCastetext(),
          textController: dropdownSearchText.value,
          child: Obx(() {
            if (casteModal.value.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  controller: scrollController,
                  itemCount: casteModal.value.data!.length +
                      (casteModal.value.nextPageUrl != null ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < casteModal.value.data!.length) {
                      return GestureDetector(
                        onTap: () => sendCasteData(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextLabel(
                                title: casteModal.value.data?[index].name,
                                fontSize: 16,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                              // TextLabel(
                              //   title: societyModal
                              //       .value.data?[index].subdistrict!.name
                              //       .toString(),
                              //   fontSize: 14,
                              //   color: grey,
                              //   fontWeight: FontWeight.w400,
                              // ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  });
            }
          }),
        );
      },
    );
  }

  void getStateAPICall(int countryId, String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var action =
        authorizationKey.isNotEmpty ? afterLoginStateAPI : befooreLoginStateAPI;
    var data = {
      "country_id": countryId,
      "action": action,
      "pagination": 1,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.getStateAPI(data, nextpage, q);
      if (res != null) {
        //print("response" + res.data![0].name.toString());
        var oldCurrentPage = stateModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = stateModal.value.data;
        var newViewData = res.data;
        stateModal.value = res;
        // print("search text data" + stateModal.value.data![0].name.toString());
        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            stateModal.value.data = viewData;
          } else {}
        }
        // stateModal.value = res;
        //isLoading.value = false;
        // tempList.value = stateModal.value.data!;
        // var newCurrentPage = res!.currentPage;
        // var viewData = stateModal.value!.data;
        // var newViewData = res!.data;
        // print(stateModal.value);
        // stateModal.value = res;
        // if (oldCurrentPage && newCurrentPage && oldCurrentPage < newCurrentPage! && oldCurrentPage != newCurrentPage) {
        //   var data = viewData && newViewData ? (stateModal.value.data = viewData.addAll(newViewData!) : res;
        // }
        // stateModal.value = res;
        // tempList.addAll(res.data!);
        // stateModal.value.data = tempList;
        // isLoading.value = false;
        // if (nextpage == "") {
        //   hasNextPage(true);
        //   loadMoreData(false);
        // } else {
        //   hasNextPage(false);
        //   loadMoreData(true);
        // }
        //isLoading.value = false;
        // if (nextpage != "") {
        //   hasNextPage(true);
        // } else {
        //   hasNextPage(false);
        // }
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void getCountryAPICall(String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    print(authKey.toString());
    var action = authorizationKey.isNotEmpty
        ? afterLoginCountryAPI
        : beforeLoginCountryAPI;
    var data = {"action": action, "pagination": 1, "apicall": "suggetion"};
    if (authorizationKey.isNotEmpty) {
      data.addAll({"auth_key": authorizationKey});
    }
    print("auth_key:-----" + authorizationKey);
    print("Data:----" + data.toString());
    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.getCountryAPI(data, nextpage, q);
      if (res != null) {
        print("Hellpppppppp");
        var oldCurrentPage = countryModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = countryModal.value.data;
        var newViewData = res.data;
        countryModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            countryModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void getDistrictAPICall(
      int countryId, int stateId, String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var action = authorizationKey.isNotEmpty
        ? afterLoginDistrictAPI
        : beforeLoginDistrictAPI;

    var data = {
      "country_id": countryId,
      "state_id": stateId,
      "action": action,
      "pagination": 1,
      "apicall": "suggetion"
    };
    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.getDistrictAPI(data, nextpage, q);
      if (res != null) {
        var oldCurrentPage = districtModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = districtModal.value.data;
        var newViewData = res.data;
        districtModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            districtModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void getVillageAPICall(int countryId, int stateId, int districtId,
      String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var action = authorizationKey.isNotEmpty
        ? afterLoginVillageAPI
        : befooreLoginVillageAPI;

    var data = {
      "country_id": countryId,
      "state_id": stateId,
      "district_id": districtId,
      "action": action,
      "pagination": 1,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.getVillageAPI(data, nextpage, q);
      if (res != null) {
        var oldCurrentPage = villageModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = villageModal.value.data;
        var newViewData = res.data;
        villageModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            villageModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void getSocietyAPICall(int countryId, int stateId, int districtId,
      int villageId, String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var action = authorizationKey.isNotEmpty
        ? afterLoginSocietyAPI
        : befooreLoginSocietyAPI;

    var data = {
      "country_id": countryId,
      "state_id": stateId,
      "district_id": districtId,
      "village_id": villageId,
      "action": action,
      "pagination": 1,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService(action);
    try {
      var res = await remoteService.getSocietyAPI(data, nextpage, q);
      if (res != null) {
        var oldCurrentPage = societyModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = societyModal.value.data;
        var newViewData = res.data;
        societyModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            societyModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void getCasteAPICall(String nextpage, String q) async {
    // if (!hasNextPage.value) {
    //   isLoading.value = true;
    // }
    // isLoading.value = true;
    var data = {"action": casteAPI, "pagination": 1, "apicall": "suggetion"};

    RemoteService remoteService = RemoteService(casteAPI);
    try {
      var res = await remoteService.getCasteAPI(data, nextpage, q);
      if (res != null) {
        var oldCurrentPage = casteModal.value.currentPage;
        var newCurrentPage = res.currentPage;
        var viewData = casteModal.value.data;
        var newViewData = res.data;
        casteModal.value = res;

        if (oldCurrentPage != null &&
            newCurrentPage != null &&
            oldCurrentPage < newCurrentPage &&
            oldCurrentPage != newCurrentPage) {
          if (viewData != null && newViewData != null) {
            viewData.addAll(newViewData);
            casteModal.value.data = viewData;
          } else {}
        }

        // tempList.value = stateModal.value.data!;
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void addSocietyAPICall(
    int countryId,
    int stateId,
    int districtId,
    int villageId,
    int subDistrictId,
    String name,
  ) async {
    var data = {
      "country_id": countryId,
      "state_id": stateId,
      "district_id": districtId,
      "village_id": villageId,
      "subdistrict_id": subDistrictId,
      "action": addSocietyAPI,
      "name": name,
      "religion_id": 1,
      "type": "General",
      "result": "row_array", // row_array,result_array
      "pagination": 1,
      "apicall": "suggetion"
    };
    RemoteService remoteService = RemoteService(addSocietyAPI);
    try {
      var res = await remoteService.addSociety(data);
      if (res != null) {
        addSocietyModal.value = res;
        if (addSocietyModal.value.id != null) {
          societyID.value = addSocietyModal.value.id!.toInt();
          showSocityTextField(false);
          societyTextController.value.text =
              addSocietyTextController.value.text.toString();
          print("add society id:- " + addSocietyModal.value.id.toString());
        }
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void addFamilyAPICall(
      int countryId,
      int stateId,
      int districtId,
      int villageId,
      int subDistrictId,
      int societyId,
      int casteId,
      String area,
      String pincode,
      String houseNumber) async {
    var data = {
      "country_id": countryId,
      "state_id": stateId,
      "district_id": districtId,
      "village_id": villageId,
      "subdistrict_id": subDistrictId,
      "society_id": societyId,
      "area": area,
      "pincode": pincode,
      "house_number": houseNumber,
      "action": addFamilyAPI,
      "caste_id": casteId,
      "type": "Owner",
      "result": "row_array", // row_array,result_array
      "pagination": 1,
      "apicall": "suggetion"
    };

    RemoteService remoteService = RemoteService(addFamilyAPI);
    try {
      var res = await remoteService.addFamilyApi(data);
      if (res != null) {
        print("not call");
        addFamilyModal.value = res;
        if (addFamilyModal.value.id != null) {
          print("family id " + addFamilyModal.value.id.toString());
          print("Data Successfully Inserted");
          Get.to(() => LetsAddFamily());
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
