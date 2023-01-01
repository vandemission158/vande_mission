import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../helper/constant.dart';

class VillageDetails extends StatefulWidget {
  VillageDetails({Key? key}) : super(key: key);

  @override
  State<VillageDetails> createState() => _VillageDetailsState();
}

class _VillageDetailsState extends State<VillageDetails>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    var rating = 4.5;
    tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: NestedScrollView(
              key: const PageStorageKey<String>('keepTabScroll'),
              headerSliverBuilder: (context, _) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      expandedHeight: Constants.height(context)/1.060,
                      title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.arrow_back,
                              color: black,
                            ),
                          ]),
                      pinned: true,
                      backgroundColor: white,
                      elevation: 0,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          color: white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextLabel(
                                  title: "Navagam village",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextLabel(
                                  title: "Mandal, Ahmedabad, Gujarat",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: blue),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.0),
                                            child: TextLabel(
                                              title: "Population",
                                              fontSize: 16,
                                              color: white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          TextLabel(
                                            title: "(Appoinment)",
                                            fontSize: 12,
                                            color: white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: TextLabel(
                                          title: "1.2 Lacs",
                                          fontSize: 20,
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
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
                                                                 const SizedBox(height: 15,),

                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: TextLabel(
                                        title: "Famous Tourist Places",
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
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    child: Image.asset(
                                                      touristPlaceImage,
                                                      height: 120,
                                                      width: 170,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: white,
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        top: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        right: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        left: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .only(
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                    ),
                                                    child: SizedBox(
                                                      width: 168,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5,
                                                                bottom: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            TextLabel(
                                                              title:
                                                                  "Dr. Jhone Deo",
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: black,
                                                            ),
                                                            TextLabel(
                                                              title:
                                                                  "cabinate minister",
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                             const SizedBox(height: 15,),
                              Container(
                                color: white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: TextLabel(
                                        title: "Famous Food items",
                                        fontSize: 16,
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
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    child: Image.asset(
                                                      foodItemImage,
                                                      height: 120,
                                                      width: 170,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        top: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        right: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                        left: BorderSide(
                                                            color: grey
                                                                .withOpacity(
                                                                    0.3),
                                                            width: 1),
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .only(
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                    ),
                                                    child: SizedBox(
                                                      width: 168,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 10,
                                                                bottom: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            TextLabel(
                                                              title:
                                                                  "Dr. Jhone Deo",
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: black,
                                                            ),
                                                            TextLabel(
                                                              title:
                                                                  "cabinate minister",
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                        preferredSize: const Size.fromHeight(40),
                        child: Column(
                          children: [
                            Container(
                              color: white,
                              child: Stack(
                                fit: StackFit.passthrough,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
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
                                    labelPadding: const EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    labelColor: orange,
                                    unselectedLabelColor:
                                        black.withOpacity(0.6),
                                    indicatorPadding:
                                        const EdgeInsets.only(top: 0),

                                    //Tabbar item
                                    tabs: const [
                                      Tab(
                                        text: "Family",
                                      ),
                                      Tab(
                                        text: "Group",
                                      ),
                                      Tab(
                                        text: "Business",
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
                  GroupScreen(),
                  Business(),
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
          const SizedBox(
            height: 110,
          ),
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
                  hintStyle: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(familyImage1),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TextLabel(
                              title: "Dr. Jhone",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black,
                            ),
                          ],
                        ),
                        TextLabel(
                          title: "Male | 29 Years | 5 family member",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 110,
          ),
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
                  hintStyle: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Stack(
        children: [
          Container(
            width: Constants.width(context),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 2,
                    blurStyle: BlurStyle.outer,
                  ),
                ]),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 15,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: grey.withOpacity(0.2)),
                              top: BorderSide(color: grey.withOpacity(0.2)),
                              left: BorderSide(color: grey.withOpacity(0.2)),
                              right: BorderSide(color: grey.withOpacity(0.2)))),
                      child: Image.asset(hoccoImage)),
                  const SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    color: grey.withOpacity(0.2),
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLabel(
                          title: "following",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: black,
                        ),
                        const TextLabel(
                          title: "+20 more",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: Constants.width(context) / 1.8,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(location),
                              const SizedBox(
                                width: 5,
                              ),
                              const Expanded(
                                child: TextLabel(
                                  title:
                                      "Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008",
                                  color: black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              top: 10, right: 20, child: Icon(Icons.more_vert_rounded))
        ],
      ),
    );
  }
}

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 110,
          ),
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
                  hintStyle: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Stack(
        children: [
          Container(
            width: Constants.width(context),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 2,
                    blurStyle: BlurStyle.outer,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(blogUser),
                        const TextLabel(
                          title: "Join Group",
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: black,
                        ),
                        const TextLabel(
                          title: "Join",
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    VerticalDivider(
                      color: grey.withOpacity(0.2),
                      thickness: 1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextLabel(
                              title: "following",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: Constants.width(context)/3.8,
                                  height: 35,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 30,
                                            width: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Image.asset(blogUser),
                                          )),
                                      Positioned(
                                          left: 20,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                              decoration: BoxDecoration(
                                                  color: white,
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(blogUser),
                                              ))),
                                      Positioned(
                                          left: 40,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                              decoration: BoxDecoration(
                                                  color: white,
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(blogUser),
                                              ))),
                                      Positioned(
                                          left: 60,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                              decoration: BoxDecoration(
                                                  color: white,
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(blogUser),
                                              ))),
                                    ],
                                  ),
                                ),
                                const TextLabel(
                                  title: "+20 more",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextLabel(
                          title: "Join Group",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
              top: 10, right: 20, child: Icon(Icons.more_vert_rounded))
        ],
      ),
    );
  }
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
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextLabel(
              title: "PM Aavas Yogajan",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: black,
            ),
            TextLabel(
              title:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: black.withOpacity(0.5),
            ),
            TextLabel(
              title: "10th Nov, 2019 to 10th Nov, 2025",
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: black.withOpacity(0.5),
            ),
            Divider(
              color: black.withOpacity(0.5),
              height: 2,
            ),
            Row(
              children: [
                Image.asset(location),
                const Expanded(
                    child: TextLabel(
                  title:
                      "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
                ))
              ],
            )
          ],
        ),
      ),
    ),
  );
}
