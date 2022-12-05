import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/modal/business/business_controller.dart';

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
                    // Flexible(
                    //   // child: ListView.builder(shrinkWrap: true, itemCount: businessController..length, itemBuilder: (context, index) => chapterList(index)),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
