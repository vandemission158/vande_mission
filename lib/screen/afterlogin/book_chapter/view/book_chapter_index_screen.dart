import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/view_book_controller.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../setting/profile.dart';
import '../../../setting/setting.dart';

class BookChapterIndexScreen extends StatelessWidget {
  BookChapterIndexScreen({Key? key}) : super(key: key);
  final ViewBookController controller = Get.put(ViewBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: white, foregroundColor: black, elevation: 0, actions: [
          const Align(
            alignment: Alignment.centerRight,
            child: TextLabel(
              title: "+ Chapter",
              color: orange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          PopupMenuButton<int>(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: SizedBox(
                    width: 100,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                        Get.to(() => const Profile());
                      },
                      child: const TextLabel(
                        title: "Edit Book",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
              PopupMenuItem(
                value: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 1, color: black.withOpacity(0.30)),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        Get.to(() => const Setting());
                      },
                      child: const TextLabel(
                        title: "Delete",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 55),
            color: white,
            elevation: 2,
          ),
        ]),
        backgroundColor: white,
        body: Obx(
          () => Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(color: greenlight, borderRadius: BorderRadius.circular(10)),
                    height: 170,
                  ),
                  Container(
                    height: 40,
                    color: white,
                  ),
                  Positioned(
                    top: -10,
                    child: Image.asset(
                      wallapaper1,
                      height: 170,
                    ),
                  ),
                  const Positioned(
                    top: 70,
                    left: 120,
                    child: TextLabel(
                      title: "Spaceman",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 120,
                    child: Row(
                      children: const [
                        TextLabel(
                          title: "Mike Massimino |",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                        TextLabel(
                          title: " 20 Chapters",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 120,
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: controller.rating.value,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 14,
                          unratedColor: lightGrey,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                            controller.rating.value = rating;
                          },
                        ),
                        TextLabel(
                          title: controller.rating.value.toString() + " / 5.0",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: TextLabel(
                  title: "Book Index",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: missonColor,
                ),
              ),
              Container(
                height: 1,
                color: orange.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15, right: 20, left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(color: orange, borderRadius: BorderRadius.circular(6)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: TextLabel(
                        title: "Overview",
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: missonColor,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(shrinkWrap: true, itemCount: controller.chapterList.length, itemBuilder: (context, index) => chapterList(index)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
                child: CustomButton(
                  onTap: controller.onTapReading,
                  gradientLeft: orangeLight2,
                  gradientRight: orangeLight1,
                  title: "Start Reading",
                ),
              )
            ],
          ),
        ));
  }

  Widget chapterList(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 15, right: 20, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(color: orange, borderRadius: BorderRadius.circular(6)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextLabel(
                    textAlign: TextAlign.start,
                    title: controller.chapterList[index]["name"].toString(),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: missonColor,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextLabel(
                    textAlign: TextAlign.start,
                    title: controller.chapterList[index]["title"].toString(),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
