import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/business/business_controller.dart';
import 'package:vande_mission/screen/afterlogin/controller/category/type_of_category_controller.dart';
import 'package:vande_mission/widgets/network_image_widget.dart';
import 'package:vande_mission/widgets/text_label.dart';

class BusinessIndexScreen extends StatefulWidget {
  const BusinessIndexScreen({Key? key}) : super(key: key);

  @override
  State<BusinessIndexScreen> createState() => _BusinessIndexScreenState();
}

class _BusinessIndexScreenState extends State<BusinessIndexScreen> {
  final TypeOfCategoryController typeOfCategoryController = Get.put(TypeOfCategoryController());
  final BusinessController businessController = Get.put(BusinessController());

  void loadMoreCategory() {
    if (typeOfCategoryController.typeOfCategoryModel.value.nextPageUrl != null) {
      typeOfCategoryController.typeOfCategoryApiCall({"type": "Business"}, typeOfCategoryController.typeOfCategoryModel.value.nextPageUrl.toString(), "");
    }
  }

  void loadMoreBusiness() {
    if (businessController.bussinessModel.value.nextPageUrl != null) {
      businessController.businessApiCall({}, businessController.bussinessModel.value.nextPageUrl.toString(), businessController.qBusiness.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            foregroundColor: black,
            elevation: 0,
            title: const Text('Business'),
          ),
          backgroundColor: white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: dropdownColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        search,
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain,
                        color: black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 37,
                          child: TextField(
                            controller: businessController.searchText.value,
                            maxLines: null,
                            style: GoogleFonts.lato(color: black, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 16),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              hintText: 'Search here'.tr,
                              hintStyle: GoogleFonts.lato(color: context.theme.hintColor, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 16),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),
                            keyboardAppearance: Brightness.light,
                            onChanged: ((q) {
                              businessController.qBusiness.value = q;
                              businessController.businessApiCall({}, "", q);
                            }),
                            // controller: controller.searchTextcontroller.value,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          businessController.qBusiness.value = "";
                          businessController.searchText.value.clear();
                          businessController.businessApiCall({}, "", "");
                        },
                        child: Image.asset(
                          close,
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                          color: black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 35,
                child: Center(
                  child: Obx(() {
                    if (typeOfCategoryController.typeOfCategoryModel.value.data == null) {
                      // return const Center(child: CircularProgressIndicator());
                      return Container(
                        child: Text("Hello"),
                      );
                    } else {
                      return LazyLoadScrollView(
                        scrollDirection: Axis.horizontal,
                        onEndOfPage: () => loadMoreCategory(),
                        scrollOffset: 100,
                        child: Scrollbar(
                          // onRefresh: () async => typeOfCategoryController.typeOfCategoryApiCall({"type": "Business"}, "", ""),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // shrinkWrap: true,
                              itemCount: typeOfCategoryController.typeOfCategoryModel.value.data!.length + (typeOfCategoryController.typeOfCategoryModel.value.nextPageUrl != null ? 1 : 0),
                              itemBuilder: (context, index) {
                                if (index < typeOfCategoryController.typeOfCategoryModel.value.data!.length) {
                                  var data = typeOfCategoryController.typeOfCategoryModel.value.data![index];
                                  return categoryData(data);
                                } else {
                                  return Container(
                                    child: Text("Hello"),
                                  );
                                  // return const Center(child: CircularProgressIndicator());
                                }
                              }),
                        ),
                      );
                    }
                  }),
                ),
              ),
              Expanded(
                child: Obx(() {
                  if (businessController.bussinessModel.value.data == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return LazyLoadScrollView(
                      // isLoading: businessController.isLoadingBusinessApiCall.value,
                      onEndOfPage: () => loadMoreBusiness(),
                      scrollOffset: 100,
                      child: RefreshIndicator(
                        onRefresh: () async => businessController.businessApiCall({}, "", ""),
                        child: ListView.builder(
                            shrinkWrap: true,
                            // itemCount: businessController.bussinessModel.value.data!.length + (businessController.bussinessModel.value.nextPageUrl != null ? 1 : 0),
                            itemCount: businessController.bussinessModel.value.data!.length + (businessController.bussinessModel.value.nextPageUrl != null ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index < businessController.bussinessModel.value.data!.length) {
                                var data = businessController.bussinessModel.value.data![index];
                                return listData(data);
                              } else {
                                return const Center(child: CircularProgressIndicator());
                              }
                            }),
                      ),
                    );
                  }
                }),
              )
            ],
          )),
    );
  }

  Widget listData(data) {
    var category = data.typeofcategory!.category!.name.toString();
    List<dynamic> addressArray = [
      if (data.area == null) "" else data.area.toString(),
      if (data.society == null) "" else data.society.name.toString(),
      data.village!.name.toString(),
      data.subdistrict!.name.toString(),
      data.district!.name.toString(),
      data.state!.name.toString(),
      data.country!.name.toString(),
    ];
    addressArray.removeWhere((item) => item.isEmpty);
    var address = addressArray.join(", ").toString();
    var imageUrl = data.storageUrl + '/' + data.logo.toString();
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1, color: grey), color: white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1, color: grey), borderRadius: BorderRadius.circular(15)),
                    // child: Image.asset(hoccoImage),
                    child: NetworkImageWidget(
                      imageUrl: imageUrl,
                      height: 50,
                      width: 50,
                      boxFit: BoxFit.cover,
                      errorImage: familyImage1,
                      errorWidth: 30,
                      errorHeight: 30,
                      indicatorWidth: 20,
                      indicatorHeight: 20,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 2,
                  color: black.withOpacity(0.2),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLabel(
                        title: data.name.toString() + ' ' + data.id.toString(),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      TextLabel(
                        title: category + " | 12 Workers",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: black.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: Constants.width(context) / 1.6,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(location),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextLabel(
                                title: address,
                                color: black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                onPressed: () {},
              ))
        ],
      ),
    );
  }
}

Widget categoryData(data) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(width: 1, color: black.withOpacity(0.2))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextLabel(
          title: "All",
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: orange,
        ),
      ),
    ),
  );
}
