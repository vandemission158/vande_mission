import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_controller.dart';
import 'package:vande_mission/widgets/bussiness_card.dart';
import 'package:vande_mission/widgets/card_button.dart';
import 'package:vande_mission/widgets/card_top.dart';
import 'package:vande_mission/widgets/text_label.dart';
import 'package:vande_mission/widgets/user_time_row.dart';

class BusinessIndexScreen extends StatefulWidget {
  BusinessIndexScreen({Key? key}) : super(key: key);

  @override
  State<BusinessIndexScreen> createState() => _BusinessIndexScreenState();
}

class _BusinessIndexScreenState extends State<BusinessIndexScreen> {
  final BusinessController businessController = Get.put(BusinessController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          foregroundColor: black,
          elevation: 0,
          title: const Text('Business'),
        ),
        backgroundColor: white,
        body: Column(
          children: [
            Container(
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(color: black.withOpacity(0.02), borderRadius: BorderRadius.circular(15), border: Border.all(color: darkGrey.withOpacity(0.1))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                                        child: Image.asset(hoccoImage),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const TextLabel(
                                            title: 'Hocco Eatery',
                                            fontSize: 16,
                                            color: black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          TextLabel(
                                            title: 'Dine-in · Takeaway',
                                            fontSize: 13,
                                            color: black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
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
                                                const Expanded(
                                                  child: TextLabel(
                                                    title: "Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008",
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
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
