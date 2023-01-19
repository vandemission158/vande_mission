import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/ads/view/ads_create_first_screen.dart';
import 'package:vande_mission/screen/afterlogin/blog/view/blog_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/book/view/book_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/broadcast/view/broadcast_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/business/view/business_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/event/view/event_create_first_screen.dart';
import 'package:vande_mission/screen/afterlogin/group/view/group_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/job/job_create_first_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/offer/offer_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/product/product_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/property/property_create_screen.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../../helper/app_color.dart';
import '../../../../helper/constant.dart';

class HomeController extends GetxController {
  var images = [videoImage, offerImage, advertisementImage].obs;

  final List<Map<String, dynamic>> bottomData = [
    {
      'id': 1,
      'title': "New Group",
      'images': group,
      'screen': () => GroupCreateScreen(),
    },
    {
      'id': 2,
      'title': "New Business",
      'images': business,
      'screen': () => BusinessCreateScreen(),
    },
    {
      'id': 3,
      'title': "New Event",
      'images': events,
      'screen': () => EventCreateFirstScreen(),
    },
    {
      'id': 4,
      'title': "New Book",
      'images': book,
      'screen': () => BookCreateScreen(),
    },
    {
      'id': 5,
      'title': "New Job",
      'images': jobs,
      'screen': () => JobCreateFirstScreen(),
    },
    {
      'id': 6,
      'title': "New Blog",
      'images': blogIcon,
      'screen': () => BlogCreateScreen(),
    },
    {
      'id': 7,
      'title': "New Product",
      'images': productYellow,
      'screen': () => ProductCreateScreen(),
    },
    {
      'id': 8,
      'title': "New Property",
      'images': properties,
      'screen': () => PropertyCreateScreen(),
    },
    {
      'id': 9,
      'title': "New Offer",
      'images': offerIcon,
      'screen': () => OfferCreateScreen(),
    },
  ].obs;

  var colors = [green, bluePanchayat, yellowSociety, pinkVillage, lightblue, lightPink, yellowSociety, bluePanchayat, green].obs;

  var pollImages = [pollFirstImage, pollSecondImage];

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
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  //  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextLabel(
                      title: "Create New Posts",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Get.back();
                                Get.to(() => const BroadCastCreateScreen());
                              },
                              child: Container(
                                width: Constants.width(context),
                                height: 55,
                                decoration: BoxDecoration(gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [orangeLight2, orangeLight1]), borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 14),
                                          child: Image.asset(brodcastIcon),
                                        ),
                                        Text(
                                          "New Brodcast",
                                          style: GoogleFonts.poppins(fontSize: 12, color: white, fontWeight: FontWeight.w500),
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
                              onTap: () {
                                Get.back();
                                Get.to(() => AdsCreateFirstScreen());
                              },
                              child: Container(
                                width: Constants.width(context),
                                height: 55,
                                decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [adsgradiant1, adsgradiant2, adsgradiant3]), borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: Image.asset(newAdIcon),
                                        ),
                                        Text(
                                          "New Ad",
                                          style: GoogleFonts.poppins(fontSize: 12, color: white, fontWeight: FontWeight.w500),
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
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 0.90, mainAxisSpacing: 20, crossAxisSpacing: 5),
                          itemCount: bottomData.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.back();
                                Get.to(bottomData[index]['screen']);
                                // if (bottomData[index]['id'] == 1) {
                                //   Get.back();
                                //   onTapCreateNewGroup();
                                // }
                                // if (bottomData[index]['id'] == 2) {
                                //   Get.back();
                                //   onTapCreateNewBussiness();
                                // }
                                // if (bottomData[index]['id'] == 3) {
                                //   Get.back();
                                //   onTapCreateNewEvent();
                                // }
                                // if (bottomData[index]['id'] == 4) {
                                //   Get.back();
                                //   onTapCreateNewBook();
                                // }
                                // if (bottomData[index]['id'] == 5) {
                                //   Get.back();
                                //   onTapCreateNewJob();
                                // }
                                // if (bottomData[index]['id'] == 6) {
                                //   Get.back();
                                //   onTapCreateNewBlog();
                                // }
                                // if (bottomData[index]['id'] == 7) {
                                //   Get.back();
                                //   onTapCreateNewProduct();
                                // }
                                // if (bottomData[index]['id'] == 8) {
                                //   Get.back();
                                //   onTapCreateNewProperty();
                                // }
                                // if (bottomData[index]['id'] == 9) {
                                //   Get.back();
                                //   onTapCreateNewOffer();
                                // }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(color: colors[(index) % colors.length].withOpacity(0.10), borderRadius: BorderRadius.circular(10)),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(17),
                                        child: Image.asset(bottomData[index]['images']),
                                      )),
                                    ),
                                    TextLabel(
                                      textAlign: TextAlign.center,
                                      title: bottomData[index]['title'].toString(),
                                      fontSize: 12,
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
