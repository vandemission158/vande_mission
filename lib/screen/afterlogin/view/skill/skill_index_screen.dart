import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/skill/skill_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class SkillIndexScreen extends StatefulWidget {
  const SkillIndexScreen({Key? key}) : super(key: key);

  @override
  State<SkillIndexScreen> createState() => _SkillIndexScreenState();
}

class _SkillIndexScreenState extends State<SkillIndexScreen> {
  final SkillController skillController = Get.put(SkillController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          foregroundColor: black,
          elevation: 0,
          title: const Text('Skill'),
        ),
        backgroundColor: white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                          maxLines: null,
                          style: GoogleFonts.lato(
                              color: black,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 16),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            hintText: 'Search here'.tr,
                            hintStyle: GoogleFonts.lato(
                                color: context.theme.hintColor,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          keyboardAppearance: Brightness.light,
                          // controller: controller.searchTextcontroller.value,
                        ),
                      ),
                    ),
                    Image.asset(
                      close,
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                      color: black.withOpacity(0.5),
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
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, inde) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 1, color: black.withOpacity(0.2))),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextLabel(
                              title: "All",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: orange,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                              bottom: BorderSide(color: grey.withOpacity(0.2)),
                              top: BorderSide(color: grey.withOpacity(0.2)),
                              left: BorderSide(color: grey.withOpacity(0.2)),
                              right: BorderSide(color: grey.withOpacity(0.2)))),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Image.asset(profileUser),
                                  width: 50,
                                ),
                                const Text(
                                  "Jenna Doe",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const TextLabel(
                                  title: "Female | 24 Years",
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: grey.withOpacity(0.1),
                              thickness: 1,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel(
                                    title: "Skills",
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: black.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 200,
                                      height: 60,
                                      child: GridView.count(
                                        crossAxisCount: 3,
                                        childAspectRatio: (1 / .4),
                                        shrinkWrap: true,
                                        children: List.generate(6, (index) {
                                          return Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: orange,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: black
                                                            .withOpacity(0.2))),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 3),
                                                  child: Center(
                                                    child: TextLabel(
                                                      title: "Coding",
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: white,
                                                    ),
                                                  ),
                                                ),
                                              ));
                                        }),
                                      )),
                                  // SizedBox(
                                  //   height: 25,
                                  //   width: Constants.width(context) / 2,
                                  //   child: Center(
                                  //     child: ListView.builder(
                                  //         shrinkWrap: true,
                                  //         scrollDirection: Axis.horizontal,
                                  //         itemCount: 20,
                                  //         itemBuilder: (context, inde) {
                                  //           return Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 left: 5),
                                  //             child: Container(
                                  //               decoration: BoxDecoration(
                                  //                   color: orange,
                                  //                   borderRadius:
                                  //                       BorderRadius.circular(
                                  //                           15),
                                  //                   border: Border.all(
                                  //                       width: 1,
                                  //                       color:
                                  //                           black.withOpacity(
                                  //                               0.2))),
                                  //               child: const Padding(
                                  //                 padding:
                                  //                     EdgeInsets.symmetric(
                                  //                         horizontal: 10,
                                  //                         vertical: 3),
                                  //                 child: Center(
                                  //                   child: TextLabel(
                                  //                     title: "Coding",
                                  //                     fontSize: 8,
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: white,
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           );
                                  //         }),
                                  //   ),
                                  // ),
                                  // const SizedBox(
                                  //   height: 20,
                                  // ),
                                  SizedBox(
                                    width: Constants.width(context) / 1.8,
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
                      )),
                  Positioned(
                      top: 0,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert_rounded,
                          size: 20,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
