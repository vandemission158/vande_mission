import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../../../helper/app_color.dart';
// import '../../../../../helper/constant.dart';
import '../../../../../helper/image_constant.dart';
import '../../../../../widgets/text_label.dart';

class DepartmentDetailScreen extends StatefulWidget {
  const DepartmentDetailScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentDetailScreen> createState() => _DepartmentDetailScreenState();
}

class _DepartmentDetailScreenState extends State<DepartmentDetailScreen> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    var rating = 4.5;
    tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        body: SafeArea(
      child: NestedScrollView(
          key: const PageStorageKey<String>('keepTabScroll'),
          headerSliverBuilder: (context, _) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  expandedHeight: 430,
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                    Icon(
                      Icons.arrow_back,
                      color: black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 25,
                      ),
                      child: Text(
                        "Add New",
                        style: TextStyle(color: orange, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                  pinned: true,
                  backgroundColor: blue,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: white,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextLabel(
                              title: "Ministry of Science & Technologies",
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: const Color(0xffEFF7FF),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: TextLabel(
                                    title: "Ministers",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: black,
                                  ),
                                ),
                                Container(
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 10,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                                child: Image.asset(
                                                  departmentDetailImage,
                                                  height: 120,
                                                  width: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    top: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    right: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    left: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                  ),
                                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                                                ),
                                                child: SizedBox(
                                                  width: 148,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: const [
                                                        TextLabel(
                                                          title: "Dr. Jhone Deo",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                          color: black,
                                                        ),
                                                        TextLabel(
                                                          title: "cabinate minister",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400,
                                                          color: grey,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  forceElevated: _,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: Column(
                      children: [
                        Container(
                          color: white,
                          child: Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: orange.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              TabBar(
                                controller: tabController,
                                indicatorWeight: 1,
                                indicator: MaterialIndicator(
                                  horizontalPadding: 10,
                                  height: 3,
                                  topLeftRadius: 4,
                                  topRightRadius: 4,
                                  bottomLeftRadius: 4,
                                  bottomRightRadius: 4,
                                  color: orange,
                                  tabPosition: TabPosition.bottom,
                                ),
                                // indicatorSize: TabBarIndicatorSize.label,
                                labelPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                labelColor: orange,
                                unselectedLabelColor: black.withOpacity(0.6),
                                indicatorPadding: const EdgeInsets.only(top: 0),

                                //Tabbar item
                                tabs: const [
                                  Tab(
                                    text: "Projects (50)",
                                  ),
                                  Tab(
                                    text: "Complaints (200)",
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              ProjectScreen(),
              ComplainScreen(),
            ],
          )),
    ));
  }
}

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              decoration: BoxDecoration(
                color: dropdownColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.filter_alt),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return listWidget(context);
                })),
          ),
        ],
      ),
    );
  }

  Widget listWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: grey,
            offset: Offset(
              0.5,
              0.5,
            ),
            blurRadius: 2.0,
            spreadRadius: 0.1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ], borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextLabel(
                    title: "PM Aavas Yogajan",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: black.withOpacity(0.8),
                  )
                ],
              ),
              TextLabel(
                title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: black.withOpacity(0.5),
              ),
              const SizedBox(
                height: 10,
              ),
              TextLabel(
                title: "10th Nov, 2019 to 10th Nov, 2025",
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: black.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(
                  color: black.withOpacity(0.5),
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(location),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                              child: TextLabel(
                            title: "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ))
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xffFFBB38)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: TextLabel(
                            title: "Pending",
                            fontSize: 15,
                            color: white,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              decoration: BoxDecoration(
                color: dropdownColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.filter_alt),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return listWidget(context);
                })),
          ),
        ],
      ),
    );
  }

  Widget listWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: grey,
            offset: Offset(
              0.5,
              0.5,
            ),
            blurRadius: 2.0,
            spreadRadius: 0.1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ], borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextLabel(
                    title: "Complaint card title 1",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: black.withOpacity(0.8),
                  )
                ],
              ),
              TextLabel(
                title: "Registered on 05 March 2022 5:00AM",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: black.withOpacity(0.5),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(blogUser),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(title: "Faritha Smith", fontSize: 13, fontWeight: FontWeight.w600, color: black),
                      TextLabel(
                        title: "female",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(
                  color: black.withOpacity(0.5),
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(location),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                              child: TextLabel(
                            title: "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ))
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xffFFBB38)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: TextLabel(
                            title: "Pending",
                            fontSize: 15,
                            color: white,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
