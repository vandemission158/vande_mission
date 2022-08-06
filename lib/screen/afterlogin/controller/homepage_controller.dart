import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/create_new_group_controller.dart';
import 'package:vande_mission/screen/afterlogin/view/create_new_group.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';

class HomePageController extends GetxController {
  var images = [videoImage, offerImage, advertisementImage].obs;

  final List<Map<String, dynamic>> bottomData = [
    {'title': "New Group", 'images': group},
    {'title': "New Business", 'images': business},
    {'title': "New Event", 'images': events},
    {'title': "New Book", 'images': book},
    {'title': "New Job", 'images': jobs},
    {'title': "New Blog", 'images': blogIcon},
    {'title': "New Product", 'images': productIcon},
    {'title': "New Property", 'images': properties},
    {'title': "New Offer", 'images': offerIcon},
  ].obs;

  void onTapCreateNewGroup() {
    Get.to(() => CreateNewGroup());
  }

  Future<Object?> bottomSheetFirstname(BuildContext context) {
    // updateNameController.value.text = nameController.value.text;
    return showModalBottomSheet(
        context: context,
        backgroundColor: white,
        elevation: 10,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: 600,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  //  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextLabel(title: "Create New Posts", fontSize: 20),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                              //  onTap: () => onTap!(),
                              child: Container(
                            width: Constants.width(context),
                            height: 55,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [orangeLight2, orangeLight1]),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(brodcastIcon),
                                    ),
                                    Text(
                                      "New Brodcast",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                              //  onTap: () => onTap!(),
                              child: Container(
                            width: Constants.width(context),
                            height: 55,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [orangeLight2, orangeLight1]),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(newAdIcon),
                                    ),
                                    Text(
                                      "New Adds",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.75,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15),
                          itemCount: bottomData.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              onTap: () => onTapCreateNewGroup(),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: green.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(17),
                                        child: Image.asset(
                                            bottomData[index]['images']),
                                      )),
                                    ),
                                    TextLabel(
                                      title:
                                          bottomData[index]['title'].toString(),
                                      fontSize: 12,
                                      color: darkGrey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    GestureDetector(
                      //  onTap: () => checkUpdateUserDetail(),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Center(
                            child: Text(
                              "Done",
                              style: GoogleFonts.roboto(
                                  color: white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
