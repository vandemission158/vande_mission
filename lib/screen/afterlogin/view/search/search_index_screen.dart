import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/search_controller.dart';
import 'package:vande_mission/widgets/book_card_search.dart';
import 'package:vande_mission/widgets/search_list_category.dart';
import 'package:vande_mission/widgets/text_label.dart';

class SearchIndexScreen extends StatelessWidget {
  SearchIndexScreen({Key? key}) : super(key: key);

  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: black,
        elevation: 0,
        // The search area here
        title: Container(
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
                    style: GoogleFonts.lato(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      hintText: 'SearchIndex here'.tr,
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
                    controller: searchController.searchTextcontroller.value,
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
      body: Obx(
        () => Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: searchController.searchList.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: SearchListCategory(
                          title: searchController.searchList[index],
                        ),
                      )),
            ),
            Obx(
              () => searchController.searchTextcontroller.value.text.isNotEmpty
                  ? seachEmptyWidget()
                  : BookCardSearch(),
            )
          ],
        ),
      ),
    );
  }

  Widget seachEmptyWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(searchEmptyImage)),
          const TextLabel(
            title: "Looking for something?",
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w400,
          ),
          const TextLabel(
            title: "SearchIndex now",
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }

  Widget seachNotFoundWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(searchNotFoundImage)),
          const TextLabel(
            title: "Oops! SearchIndex result not found",
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w400,
          ),
          const TextLabel(
            title: "Try changing your search query",
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
