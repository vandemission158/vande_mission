import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/view/post_detail_screen.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../setting/profile.dart';
import '../../../setting/setting.dart';
import '../../book_preview_controller.dart';

class BookPreviewScreen extends StatelessWidget {
  BookPreviewScreen({Key? key}) : super(key: key);
  final BookPreviewController controller = Get.put(BookPreviewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenlight,
        foregroundColor: black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: (() => Get.to(() => PostDetailScreen())),
              child: Center(
                child: TextLabel(
                  title: "Edit",
                  color: orange,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: greenlight,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  height: 90,
                ),
                Positioned(
                    top: 0,
                    left: 130,
                    right: 130,
                    child: Image.asset(wallapaper1))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  const TextLabel(
                    title: "Yves Saint Laurent",
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  TextLabel(
                    title: "Suzy Menkes",
                    color: black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: controller.rating.value,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 14,
                        unratedColor: lightGrey,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),
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
                  const SizedBox(
                    height: 50,
                  ),
                  TextLabel(
                    title: "Chapter 1",
                    color: black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const TextLabel(
                    title: "Going to Space",
                    color: missonColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextLabel(
                    title:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    color: black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
