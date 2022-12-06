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
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: businessController.businessDataList.length,
                  itemBuilder: (context, index) {
                    return listData(index);
                  }),
            )
          ],
        ));
  }

  Widget listData(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(width: 1, color: grey), color: white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(decoration: BoxDecoration(border: Border.all(width: 1, color: grey), borderRadius: BorderRadius.circular(15)), child: Image.asset(hoccoImage)),
                  ),
                  Container(
                    height: 100,
                    width: 2,
                    color: black.withOpacity(0.2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLabel(
                          title: businessController.businessDataList[index].name.toString(),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        TextLabel(
                          title: "Food Business | 12 Workers",
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.5),
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
                  )
                ],
              ),
            ),
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
    );
  }
}
