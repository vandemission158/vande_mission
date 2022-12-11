import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/location/panchayat_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class PanchayatIndexScreen extends StatefulWidget {
  const PanchayatIndexScreen({Key? key}) : super(key: key);

  @override
  State<PanchayatIndexScreen> createState() => _PanchayatIndexScreenState();
}

class _PanchayatIndexScreenState extends State<PanchayatIndexScreen> {
  final PanchayatController panchayatController = Get.put(PanchayatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          foregroundColor: black,
          elevation: 0,
          title: const Text('Department'),
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
                    }),
              ),
            ),

            //ahi thi code change karva no chhe
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: grey), color: white, borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Bopal Gram Panchayat",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const TextLabel(
                                          title: "Subdistrict : Lorem",
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: black,
                                        ),
                                        TextLabel(
                                          title: "Block : Lorem",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: black,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        TextLabel(
                                          title: "District : Lorem",
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: black,
                                        ),
                                        TextLabel(
                                          title: "State : Lorem",
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: black,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 2,
                            color: black.withOpacity(0.2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 39),
                                child: Row(
                                  children: const [
                                    TextLabel(
                                      title: "04",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: orange,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    TextLabel(
                                      title: "Villages",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: black,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 2,
                                height: 50,
                                color: black.withOpacity(0.2),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Row(
                                  children: const [
                                    TextLabel(
                                      title: "06",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: orange,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    TextLabel(
                                      title: "Total Grants",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                      top: 0,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.more_vert_rounded),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}