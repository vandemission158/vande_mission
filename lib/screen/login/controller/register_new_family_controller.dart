import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
// import 'package:vande_mission/screen/login/modal/state_modal.dart';
import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../../widgets/text_label.dart';
import '../../beforelogin/modal/state_modal.dart';
import '../../beforelogin/view/register_new_society.dart';
// import '../view/register_new_society.dart';

class RegisterFamilyController extends GetxController {
  var stateModal = StateModal().obs;
  var tempList = <Datum>[].obs;
  late PageController scrollController;
  var hasNextPage = false.obs;
  var pageNumber = 1.obs;
  final TextEditingController dropdownSearchText = TextEditingController();
  var nextpage = "".obs;
 
  // @override
  // void onInit() {
  //    getStateDetais(1,"");
  //   // TODO: implement onInit
  //   super.onInit();
  // }

  // void loadMore() {
  //   scrollController = PageController()
  //     ..addListener(() => {
  //           if (scrollController.position.maxScrollExtent ==
  //               scrollController.offset)
  //             {if (hasNextPage.value) getStateDetais(1, "")}
  //         });
  // }

  void onTapNext() {
    Get.to(() => HomePage());
  }

  void onTapNewSociety() {
    Get.to(() => RegisterNewSociety());
  }

  Future<Object?> bottomSheetDetail(BuildContext context) {
    // userDetailController.fetchOtherUserDetail(
    //     id, event.value.interestedUser![index].userId.toString());
    return showCupertinoModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Container(
              height: Constants.height(context) * 0.50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(),
              ),
              child: Scaffold(
                body: Column(
                  children: [
                    TextField(
                      readOnly: true,
                      // onTap: () => dropDowndialogBox(context),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: grey),
                          hintText: "area".tr,
                          fillColor: lightWhite),
                    ),
                    Expanded(
                      child: Obx(
                        () => ListView.builder(
                            //controller: scrollController,
                            itemCount: tempList.length,
                            itemBuilder: (context, index) =>
                                //  index <
                                //         tempList.length
                                //     ?
                                GestureDetector(
                                    // onTap: () => print(stateModal
                                    //     .value.data![index].id
                                    //     .toString()),
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: TextLabel(
                                    title: tempList[index].name.toString(),
                                    color: Colors.black,
                                    // color: darkGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ))
                            // : Padding(
                            //   padding: const EdgeInsets.symmetric(vertical: 20),
                            //   child: Center(child: const CircularProgressIndicator()),
                            // )
                            ),
                      ),
                    ),
                    // GestureDetector(
                    //     onTap: () {
                    //       getStateDetais(1, stateModal.value.nextPageUrl.toString());
                    //       print("Next Page 2 Data" +
                    //           stateModal.value.nextPageUrl.toString());
                    //     },
                    //     child: Text("Load More")),
                  ],
                ),
              )),
        );
      },
    );
  }

  List<String> stateList = [];

  // void getStateDetais(int userId, String nextpage) async {
  //   // isLoading.value = true;
  //   var data = {
  //     "country_id": 1,
  //     "action": "beforelogin/state",
  //     "pagination": 1
  //   };
  //   RemoteService remoteService = RemoteService();
  //   try {
  //     var res = await remoteService.getStateDetail(data, nextpage);
  //     if (res != null) {
  //       stateModal.value = res;
  //       tempList.addAll(res.data!);
  //       for(int i = 0;i<tempList.length;i++)
  //       {
  //         print("show name ${tempList[i].name}");
  //       }
  //       // if(){

  //       // }

  //       // nextpage.value = res.nextPageUrl.toString();
  //       // print("Next page url:---"+res.nextPageUrl.toString());
  //       // print("Hello response" + res.data.toString());
  //       print(
  //           "Hello statemodal:--" + stateModal.value.data![0].name.toString());
  //       // for (var i = 0; i < res.data!.length; i++) {
  //       //   tempList.add(res.data![i]);
  //       //   print("listttttt" + stateList.toList().toString());
  //       //   print("temp" + tempList.toList().toString());
  //       // }
  //     } else {
  //       // Constants.snackBar("login", 'something_went_wrong', true);
  //     }
  //   } finally {
  //     // isLoading.value = false;
  //   }
  // }
}
