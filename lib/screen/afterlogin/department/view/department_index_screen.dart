import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/department/controller/department_controller.dart';
import 'package:vande_mission/widgets/shimmer_effect.dart';
import 'package:vande_mission/widgets/text_label.dart';

class DepartmentIndexScreen extends StatefulWidget {
  const DepartmentIndexScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentIndexScreen> createState() => _DepartmentIndexScreenState();
}

class _DepartmentIndexScreenState extends State<DepartmentIndexScreen> {
  final DepartmentController departmentController = Get.put(DepartmentController());

  void loadMoreDepartment() {
    if (departmentController.departmentModel.value.nextPageUrl != null) {
      departmentController.departmentApiCall({}, departmentController.departmentModel.value.nextPageUrl.toString(), departmentController.search.value);
    }
  }

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
                        controller: departmentController.searchText.value,
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
                        onChanged: ((q) {
                          departmentController.search.value = q;
                          departmentController.departmentApiCall({}, "", q);
                        }),
                        // controller: controller.searchTextcontroller.value,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      departmentController.search.value = "";
                      departmentController.searchText.value.clear();
                      departmentController.departmentApiCall({}, "", "");
                    },
                    child: Image.asset(
                      close,
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                      color: black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return LazyLoadScrollView(
                // isLoading: departmentController.isLoadingBusinessApiCall.value,
                onEndOfPage: () => loadMoreDepartment(),
                scrollOffset: 500,
                child: RefreshIndicator(
                  onRefresh: () async => departmentController.departmentApiCall({}, "", ""),
                  child: ListView.builder(
                      shrinkWrap: true,
                      // itemCount: departmentController.departmentModel.value.data!.length + (departmentController.departmentModel.value.nextPageUrl != null ? 1 : 0),
                      itemCount: departmentController.departmentModel.value.data == null ? 10 : departmentController.departmentModel.value.data!.length + (departmentController.departmentModel.value.nextPageUrl != null ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (departmentController.departmentModel.value.data == null) {
                          return shimmerLoading('departmentIndex');
                        } else {
                          if (index < departmentController.departmentModel.value.data!.length) {
                            var data = departmentController.departmentModel.value.data![index];
                            return listData(data);
                          } else {
                            return const Center(child: CircularProgressIndicator());
                            // return shimmerLoading('businessIndex');
                          }
                        }
                      }),
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  Widget shimmerLoading(screen) {
    if (['departmentIndex'].contains(screen)) {
      return const ShimmerEffect(50, 150, 15);
    }
    return const ShimmerEffect(50, 30, 15);
  }

  Widget listData(data) {
    return Padding(
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
                        Text(
                          data!.name.toString(),
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                                  title: "3",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                                TextLabel(
                                  title: "Cabinate Minister",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: black.withOpacity(0.5),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "3",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                                TextLabel(
                                  title: "State Minister",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: black.withOpacity(0.5),
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
                              title: "50",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextLabel(
                              title: "Total Projects",
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
                              title: "200",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextLabel(
                              title: "Complaints",
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
    );
  }
}