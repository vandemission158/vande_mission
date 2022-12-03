import 'dart:ui';

import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:detectable_text_field/widgets/detectable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/screen/afterlogin/controller/post_detail_controller.dart';
import 'package:vande_mission/widgets/network_image_widget.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/text_label.dart';

class PostDetailScreen extends StatelessWidget {
  PostDetailScreen({Key? key}) : super(key: key);
  final PostDetailController controller = Get.put(PostDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(blogUser),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextLabel(
                  title: "Farita Smith",
                  fontSize: 17,
                  color: black,
                  fontWeight: FontWeight.w700,
                ),
                TextLabel(
                  title: "@SmithFa",
                  fontSize: 15,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Center(child: Image.asset(videoImage)),
                        const SizedBox(
                          height: 20,
                        ),
                        DetectableText(
                          text:
                              " https://pub.dev/packages/detectable_text_field Hello guys, Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.  #trending #hashtagsdemo #tags",
                          detectionRegExp: RegExp(
                            "(?!\\n)(?:^|\\s)([]([$detectionContentLetters]+))|$urlRegexContent$hashTagRegExp",
                            multiLine: false,
                          ),
                          detectedStyle: GoogleFonts.poppins(
                              color: orange,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                          basicStyle: GoogleFonts.poppins(
                              color: missonColor,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                          onTap: (tappedText) async {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: greenlight,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(redHeart),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const TextLabel(
                                          title: "122",
                                          fontSize: 17,
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(redComment),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const TextLabel(
                                          title: "10K",
                                          fontSize: 17,
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(share)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 1,
                      color: greylight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.commentList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return commentList(context, index);
                        }),
                  ),
                ],
              ),
            ),
          ),
          feedDetailBottom(context)
        ],
      ),
    );
  }

  Widget commentList(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                      controller.commentList[index]["image"].toString())
                  // NetworkImageWidget(
                  //   imageUrl: controller.commentList[index]["image"].toString(),
                  //   height: 30,
                  //   width: 30,
                  //   boxFit: BoxFit.cover,
                  //   errorImage: userPlaceholder,
                  //   errorWidth: 30,
                  //   errorHeight: 30,
                  //   indicatorWidth: 20,
                  //   indicatorHeight: 20,
                  // )
                  ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: greenlight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextLabel(
                            title: controller.commentList[index]["name"]
                                .toString(),
                            fontSize: 14,
                            color: black,
                            fontWeight: FontWeight.w600,
                          ),
                          TextLabel(
                            title: controller.commentList[index]["time"]
                                .toString(),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: black.withOpacity(0.4),
                          ),
                        ],
                      ),
                      GestureDetector(
                          child: Icon(
                        Icons.delete_forever_rounded,
                        size: 20,
                        color: black.withOpacity(0.5),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  DetectableText(
                    text: controller.commentList[index]["comment"].toString(),
                    detectionRegExp: RegExp(
                      "(?!\\n)(?:^|\\s)([]([$detectionContentLetters]+))|$urlRegexContent",
                      multiLine: false,
                    ),
                    detectedStyle: GoogleFonts.poppins(
                        color: blue,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                    basicStyle: GoogleFonts.poppins(
                        color: grey,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                    onTap: (tappedText) async {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            redHeart,
                            height: 12,
                            width: 12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const TextLabel(
                            title: "122",
                            fontSize: 12,
                            color: black,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget feedDetailBottom(
    BuildContext context,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 1)
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: dropdownColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(smily)),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 37,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            textAlignVertical: TextAlignVertical.top,
                            style: GoogleFonts.lato(
                                color: context.theme.focusColor,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              hintText: 'Type comment'.tr,
                              hintStyle: GoogleFonts.lato(
                                  color: context.theme.hintColor,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                            keyboardAppearance: Brightness.light,
                            textInputAction: TextInputAction.newline,
                          ),
                        ),
                      ),
                      ClipRRect(
                          child: Image.asset(
                        cameraIcon,
                        color: black.withOpacity(0.5),
                      )),
                    ],
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 1)
                    ], color: white, borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Icon(
                        Icons.send_outlined,
                        size: 20,
                        color: orange,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
