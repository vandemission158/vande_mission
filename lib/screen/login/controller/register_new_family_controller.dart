import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
import 'package:vande_mission/screen/login/modal/state_modal.dart';
import '../../../helper/constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../../widgets/text_label.dart';
import '../view/register_new_society.dart';

class RegisterFamilyController extends GetxController {
  var stateModal = StateModal().obs;
  var tempList = <Datum>[].obs;
  late PageController scrollController;
  var hasNextPage = false.obs;
  var pageNumber = 1.obs;
  var isLoading = false.obs;
  final TextEditingController dropdownSearchText = TextEditingController();
  var nextpage = "".obs;
  var loadMoreData = false.obs;

  void fetchAPiCall() {
    getStateDetais(1, "");
    loadMoreApicall();
  }

  void loadMoreApicall() {
    scrollController = PageController()
      ..addListener(() => {
            if (scrollController.position.maxScrollExtent ==
                scrollController.offset)
              {
                if (stateModal.value.nextPageUrl != "")
                  {getStateDetais(1, stateModal.value.nextPageUrl.toString())}
              }
          });
  }

  @override
  void onInit() {
    //  getStateDetais(1, "");
// TODO: implement onInit
    super.onInit();
    // scrollController = PageController()
    //   ..addListener(() => {
    //         if (scrollController.position.maxScrollExtent ==
    //             scrollController.offset)
    //           {print("hsgdfhghbsdhgfhvnzvjdvbnmzxvnxnzbvb")}
    //       });

    // loadMore();
  }

  void fetch() {
    stateModal.value.nextPageUrl!.isNotEmpty
        ? getStateDetais(1, stateModal.value.nextPageUrl.toString())
        : print("Hello demo data");
  }

  void onTapNext() {
    Get.to(() => const HomePage());
  }

  void onTapNewSociety() {
    Get.to(() => const RegisterNewSociety());
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
                        () => isLoading.value && tempList.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                controller: scrollController,
                                itemCount: tempList.length + 1,
                                itemBuilder: (context, index) => index <
                                        tempList.length
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: TextLabel(
                                          title:
                                              tempList[index].name.toString(),
                                          fontSize: 16,
                                          color: darkGrey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    : loadMoreData.value
                                        ? const Center(
                                            child: CircularProgressIndicator())
                                        : Container()),
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

  void getStateDetais(int userId, String nextpage) async {
    if (!hasNextPage.value) {
      isLoading.value = true;
    }
    var data = {
      "country_id": userId,
      "action": "beforelogin/state",
      "pagination": 1
    };
    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.getStateDetail(data, nextpage);
      if (res != null) {
        stateModal.value = res;
        tempList.addAll(res.data!);
        if (nextpage == "") {
          hasNextPage(true);
          loadMoreData(false);
        } else {
          hasNextPage(false);
          loadMoreData(true);
        }
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
      isLoading.value = false;
    }
  }
}
