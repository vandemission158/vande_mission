import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helper/app_color.dart';
import '../../../../helper/constant.dart';
import '../../../../helper/image_constant.dart';
import '../../../../widgets/card_button.dart';
import '../../../../widgets/text_label.dart';

class AdsIndexScreen extends StatelessWidget {
  const AdsIndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          foregroundColor: black,
          elevation: 0,
          title: const Text('Ads'),
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
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border(bottom: BorderSide(color: grey.withOpacity(0.2)), top: BorderSide(color: grey.withOpacity(0.2)), left: BorderSide(color: grey.withOpacity(0.2)), right: BorderSide(color: grey.withOpacity(0.2)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Image.asset(advertisementImage),
                                Positioned(top: 20, left: 20, child: Image.asset(fbImage)),
                                const Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: TextLabel(
                                    title: 'Facebook -  Famous social media',
                                    fontSize: 15,
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset(orangeThreeDots),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: CardButton(
                            title: "Install Now",
                          )),
                    ],
                  )),
            ),
          ],
        ));
  }
}
