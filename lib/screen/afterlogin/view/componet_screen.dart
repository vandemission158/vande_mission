import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/componet_screen_controller.dart';
import 'package:vande_mission/widgets/purple_small_lable.dart';
import 'package:vande_mission/widgets/text_label.dart';

class ComponetsScreen extends StatelessWidget {
  ComponetsScreen({Key? key}) : super(key: key);

  final ComponetsScreenController controller =
      Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(
                Icons.close,
              ),
              color: black,
              onPressed: () {
                Get.back();
              },
            ),
          )
        ],
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLabel(
                      title: "What_do_you_want_to_talk_about?",
                      color: lableColor.withOpacity(0.4),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const TextLabel(
                      title:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      color: black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const TextLabel(
                      title: 'vote_which_is_better?',
                      color: black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    for (var i = 0; i < controller.texts.length; i++)
                      Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Row(
                            children: [
                              LinkifyText(
                                controller.text,
                                // componetsScreenController.texts[i]['text'],
                                textAlign: TextAlign.left,
                                linkTypes: controller.texts[i]['types'],
                                // textStyle: const TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w500),
                                linkStyle: const TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                // onTap: (link) =>
                                //     showSnackbar("link pressed: ${link.value!}"),
                              ),
                            ],
                          )),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // SizedBox(
                //   height: 150,
                //   child: GridView.builder(
                //       itemCount: 2,
                //       shrinkWrap: true,
                //       padding: EdgeInsets.zero,
                //       physics: const NeverScrollableScrollPhysics(),
                //       gridDelegate:
                //           const SliverGridDelegateWithFixedCrossAxisCount(
                //               crossAxisCount: 2,
                //               mainAxisSpacing: 4,
                //               crossAxisSpacing: 10),
                //       itemBuilder: (BuildContext context, index) {
                //         return Stack(
                //           children: [
                //             Image.asset(
                //               componetsScreenController.pollImages[index],
                //               fit: BoxFit.cover,
                //             ),
                //             Positioned(
                //                 top: 15,
                //                 right: 10,
                //                 child: Container(
                //                   decoration: const BoxDecoration(
                //                       color: white, shape: BoxShape.circle),
                //                   child: const Icon(
                //                     Icons.close,
                //                     size: 15,
                //                   ),
                //                 ))
                //           ],
                //         );
                //       }),
                // ),
                if (controller.showRecord.value)
                  Row(children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      size: 40,
                      color: orange,
                    ),
                    Expanded(
                      child: Slider(
                        activeColor: orange,
                        min: 0,
                        max: 100,
                        value: controller.currentRangeValues.value,
                        onChanged: (value) {
                          controller.currentRangeValues.value = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                          onTap: () => controller.showRecord(false),
                          child: SizedBox(
                              height: 10,
                              width: 10,
                              child: Image.asset(
                                close,
                                fit: BoxFit.contain,
                              ))),
                    )
                  ]),

                if (controller.showPoll.value)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: bluePanchayat.withOpacity(0.10))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const TextLabel(
                                title: 'poll_options',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                    onTap: () => controller.showPoll(false),
                                    child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          close,
                                          fit: BoxFit.contain,
                                        ))),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: bluePanchayat.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer 1"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: bluePanchayat.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Answer 2"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: InkWell(
                              onTap: () {},
                              child: const TextLabel(
                                title: "add_option",
                                color: orange,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                if (controller.showGallery.value)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  controller.pollImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                right: 20,
                                child: GestureDetector(
                                    onTap: () => controller.showGallery(false),
                                    child: Image.asset(
                                      closeCircle,
                                    )),
                              )
                            ],
                          );
                        }),
                      ),
                    ),
                  ),

                if (controller.showAddVideo.value)
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(videoImage),
                    ),
                    Positioned(
                      top: 30,
                      right: 10,
                      child: GestureDetector(
                          onTap: () => controller.showAddVideo(false),
                          child: Image.asset(
                            closeCircle,
                          )),
                    ),
                    Positioned(
                        top: 20,
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Image.asset(playIcon)),
                  ]),

                if (controller.showPlace.value)
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: bluePanchayat.withOpacity(0.10))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 12, top: 12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const PurpleSmallLable(
                                  title: "location",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: GestureDetector(
                                      onTap: () => controller.showPlace(false),
                                      child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          close,
                                          fit: BoxFit.contain,
                                        ),
                                      )),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 10, left: 10, bottom: 10),
                              child: Image.asset(
                                mapImage,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                children: [
                                  Image.asset(cityImage),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextLabel(
                                          title: 'city',
                                          color: black.withOpacity(0.5),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        const TextLabel(
                                          title: "Ahmedabad, Gujarat",
                                          color: black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                if (controller.showAddSome.value)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: bluePanchayat.withOpacity(0.10))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const PurpleSmallLable(
                                title: "Bussiness",
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                    onTap: () => controller.showAddSome(false),
                                    child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          close,
                                          fit: BoxFit.contain,
                                        ))),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(businessImage),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextLabel(
                                        title: "Hocco Eatery",
                                        color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      TextLabel(
                                        title: "Dine-in · Takeaway",
                                        color: black.withOpacity(0.5),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: Constants.width(context) / 1.5,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(location),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Expanded(
                                              child: TextLabel(
                                                title:
                                                    "Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008",
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
                          )
                        ],
                      ),
                    ),
                  ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.only(top: 20),
          height: 210,
          // width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (controller.textBottom[index]['id'] == 1) {
                            controller.showPoll(true);
                          }
                          if (controller.textBottom[index]['id'] == 2) {
                            controller.showGallery(true);
                          }
                          if (controller.textBottom[index]['id'] == 3) {
                            controller.showAddVideo(true);
                          }
                          if (controller.textBottom[index]['id'] == 4) {
                            controller.showPlace(true);
                          }
                          if (controller.textBottom[index]['id'] == 5) {
                            controller.showAddSome(true);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: controller.bottomColor[index %
                                            controller.bottomColor.length]
                                        .withOpacity(0.10),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Image.asset(controller
                                        .textBottom[index]["image"]
                                        .toString())),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextLabel(
                                  title: controller.textBottom[index]["name"]
                                      .toString(),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.showRecord(true),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: vandeColor)),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset(micIcon),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: TextLabel(
                                    title: 'record',
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient:  LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [postGradiant1, postGradiant2]),
                        ),
                        child: const Center(
                          child: TextLabel(
                            title: "post",
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
