import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:vande_mission/helper/constant.dart';

import '../../../../helper/app_color.dart';
import '../../../../helper/image_constant.dart';
import '../../../../widgets/text_label.dart';

class BussinessDetailScreen extends StatefulWidget {
  const BussinessDetailScreen({Key? key}) : super(key: key);

  @override
  State<BussinessDetailScreen> createState() => _BussinessDetailScreenState();
}

class _BussinessDetailScreenState extends State<BussinessDetailScreen> with TickerProviderStateMixin {
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
                  expandedHeight: Constants.height(context) / 1.4,
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                    Icon(
                      Icons.arrow_back,
                      color: black,
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: black,
                    ),
                  ]),
                  pinned: true,
                  backgroundColor: const Color(0xffEFF7FF),
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: white,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            color: const Color(0xffEFF7FF),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20),
                              child: Row(
                                children: [
                                  Image.asset(
                                    hoccoImage,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const TextLabel(
                                            title: "Hocco",
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const TextLabel(
                                            title: "Food",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          Row(
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
                                                      fontWeight: FontWeight.w600,
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            color: const Color(0xffE0F0FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: rating,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemSize: 20,
                                  unratedColor: lightGrey,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                    rating = rating;
                                  },
                                ),
                                TextLabel(
                                  title: rating.toString() + " Rating & Review",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Description",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextLabel(
                                  title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "Social Links",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: black,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(facebookIcon),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(instagramIcon),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(twitterIcon),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(whatsAppIcon),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "Bussiness owner",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 90,
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
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    top: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    right: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                    left: BorderSide(color: grey.withOpacity(0.3), width: 1),
                                                  ),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: SizedBox(
                                                  width: 200,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(blogUser),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: const [
                                                            TextLabel(
                                                              title: "Dr. Jhone Deo",
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                              color: black,
                                                            ),
                                                            TextLabel(
                                                              title: "Male",
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w400,
                                                              color: grey,
                                                            ),
                                                          ],
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
          )
          // CustomScrollView(
          // primary: true,
          // shrinkWrap: true,
          // slivers: [
          //   SliverAppBar(
          //     expandedHeight: 600,
          //     title: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: const [
          //           Icon(
          //             Icons.arrow_back,
          //             color: black,
          //           ),
          //           Icon(
          //             Icons.more_vert_rounded,
          //             color: black,
          //           ),
          //         ]),
          //     flexibleSpace: FlexibleSpaceBar(
          //       background: Container(
          //         color: white,
          //         child: Column(
          //           children: [
          //             SizedBox(
          //               height: 50,
          //             ),
          //             Container(
          //               color: Color(0xffEFE2ed),
          //               child: Padding(
          //                 padding: const EdgeInsets.only(left: 20.0, right: 20),
          //                 child: Row(
          //                   children: [
          //                     Image.asset(
          //                       hoccoImage,
          //                       height: 100,
          //                     ),
          //                     const SizedBox(
          //                       width: 15,
          //                     ),
          //                     Expanded(
          //                       child: Padding(
          //                         padding: const EdgeInsets.only(
          //                             top: 10.0, bottom: 10),
          //                         child: Column(
          //                           crossAxisAlignment:
          //                               CrossAxisAlignment.start,
          //                           children: [
          //                             const TextLabel(
          //                               title: "Hocco",
          //                               fontSize: 24,
          //                               fontWeight: FontWeight.w700,
          //                             ),
          //                             const TextLabel(
          //                               title: "Food",
          //                               fontSize: 18,
          //                               fontWeight: FontWeight.w400,
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Row(
          //                                     children: [
          //                                       Image.asset(location),
          //                                       const SizedBox(
          //                                         width: 5,
          //                                       ),
          //                                       const Expanded(
          //                                           child: TextLabel(
          //                                         title:
          //                                             "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
          //                                         fontSize: 11,
          //                                         fontWeight: FontWeight.w500,
          //                                       ))
          //                                     ],
          //                                   ),
          //                                 ),
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Container(
          //               height: 40,
          //               color: Color(0xffEFE2ed),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   RatingBar.builder(
          //                     initialRating: rating,
          //                     minRating: 1,
          //                     direction: Axis.horizontal,
          //                     itemSize: 20,
          //                     unratedColor: lightGrey,
          //                     allowHalfRating: true,
          //                     itemCount: 5,
          //                     itemPadding:
          //                         const EdgeInsets.symmetric(horizontal: 2.0),
          //                     itemBuilder: (context, _) => const Icon(
          //                       Icons.star,
          //                       color: Colors.amber,
          //                     ),
          //                     onRatingUpdate: (rating) {
          //                       print(rating);
          //                       rating = rating;
          //                     },
          //                   ),
          //                   TextLabel(
          //                     title: rating.toString() + " Rating & Review",
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w500,
          //                     color: black,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             const SizedBox(
          //               height: 10,
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 20),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: const [
          //                   TextLabel(
          //                     title: "Description",
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.w600,
          //                     color: black,
          //                   ),
          //                   SizedBox(
          //                     height: 5,
          //                   ),
          //                   TextLabel(
          //                     title:
          //                         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w400,
          //                     color: grey,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             const SizedBox(
          //               height: 20,
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 20),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   const TextLabel(
          //                     title: "Bussiness owner",
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.w600,
          //                     color: black,
          //                   ),
          //                   const SizedBox(
          //                     height: 5,
          //                   ),
          //                   Container(
          //                     height: 90,
          //                     child: ListView.builder(
          //                         shrinkWrap: true,
          //                         itemCount: 10,
          //                         scrollDirection: Axis.horizontal,
          //                         itemBuilder: (context, index) {
          //                           return Padding(
          //                             padding: const EdgeInsets.only(
          //                                 left: 20, top: 10, bottom: 10),
          //                             child: Column(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.start,
          //                               crossAxisAlignment:
          //                                   CrossAxisAlignment.start,
          //                               children: [
          //                                 Container(
          //                                   decoration: BoxDecoration(
          //                                     border: Border(
          //                                       bottom: BorderSide(
          //                                           color:
          //                                               grey.withOpacity(0.3),
          //                                           width: 1),
          //                                       top: BorderSide(
          //                                           color:
          //                                               grey.withOpacity(0.3),
          //                                           width: 1),
          //                                       right: BorderSide(
          //                                           color:
          //                                               grey.withOpacity(0.3),
          //                                           width: 1),
          //                                       left: BorderSide(
          //                                           color:
          //                                               grey.withOpacity(0.3),
          //                                           width: 1),
          //                                     ),
          //                                     borderRadius:
          //                                         BorderRadius.circular(10),
          //                                   ),
          //                                   child: SizedBox(
          //                                     width: 200,
          //                                     child: Padding(
          //                                       padding: const EdgeInsets.only(
          //                                           left: 10,
          //                                           right: 10,
          //                                           top: 10,
          //                                           bottom: 10),
          //                                       child: Row(
          //                                         children: [
          //                                           Image.asset(blogUser),
          //                                           const SizedBox(
          //                                             width: 10,
          //                                           ),
          //                                           Column(
          //                                             crossAxisAlignment:
          //                                                 CrossAxisAlignment
          //                                                     .start,
          //                                             children: const [
          //                                               TextLabel(
          //                                                 title:
          //                                                     "Dr. Jhone Deo",
          //                                                 fontSize: 16,
          //                                                 fontWeight:
          //                                                     FontWeight.w600,
          //                                                 color: black,
          //                                               ),
          //                                               TextLabel(
          //                                                 title: "Male",
          //                                                 fontSize: 12,
          //                                                 fontWeight:
          //                                                     FontWeight.w400,
          //                                                 color: grey,
          //                                               ),
          //                                             ],
          //                                           ),
          //                                         ],
          //                                       ),
          //                                     ),
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           );
          //                         }),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     bottom: PreferredSize(
          //       preferredSize: const Size.fromHeight(50),
          //       child: Column(
          //         children: [
          //           Container(
          //             color: white,
          //             child: Stack(
          //               fit: StackFit.passthrough,
          //               alignment: Alignment.bottomCenter,
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 20),
          //                   child: Container(
          //                     height: 3,
          //                     decoration: BoxDecoration(
          //                       color: orange.withOpacity(0.2),
          //                       borderRadius: BorderRadius.circular(3),
          //                     ),
          //                   ),
          //                 ),
          //                 TabBar(
          //                   controller: tabController,
          //                   indicatorWeight: 1,
          //                   indicator: MaterialIndicator(
          //                     horizontalPadding: 10,
          //                     height: 3,
          //                     topLeftRadius: 4,
          //                     topRightRadius: 4,
          //                     bottomLeftRadius: 4,
          //                     bottomRightRadius: 4,
          //                     color: orange,
          //                     tabPosition: TabPosition.bottom,
          //                   ),
          //                   // indicatorSize: TabBarIndicatorSize.label,
          //                   labelPadding: const EdgeInsets.symmetric(
          //                       horizontal: 0, vertical: 0),
          //                   labelColor: orange,
          //                   unselectedLabelColor: black.withOpacity(0.6),
          //                   indicatorPadding: const EdgeInsets.only(top: 0),

          //                   //Tabbar item
          //                   tabs: const [
          //                     Tab(
          //                       text: "Projects (50)",
          //                     ),
          //                     Tab(
          //                       text: "Complaints (200)",
          //                     )
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //           TabBarView(controller: tabController, children: [
          //             Image.asset(blogUser),
          //           ])
          //         ],
          //       ),
          //     ),
          //     pinned: true,
          //     backgroundColor: blue,
          //     elevation: 0,
          //   ),
          //profile widget
          // SliverToBoxAdapter(
          //     child: TabBarView(
          //   controller: tabController,
          //   children: [

          //   ],
          // ))
          // SliverToBoxAdapter(
          //   child: Column(
          //     children: [
          //       Container(
          //         color: blue.withOpacity(0.2),
          //         child: Padding(
          //           padding: const EdgeInsets.only(left: 20.0, right: 20),
          //           child: Row(
          //             children: [
          //               Image.asset(
          //                 hoccoImage,
          //                 height: 100,
          //               ),
          //               const SizedBox(
          //                 width: 15,
          //               ),
          //               Expanded(
          //                 child: Padding(
          //                   padding:
          //                       const EdgeInsets.only(top: 10.0, bottom: 10),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const TextLabel(
          //                         title: "Hocco",
          //                         fontSize: 24,
          //                         fontWeight: FontWeight.w700,
          //                       ),
          //                       const TextLabel(
          //                         title: "Food",
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w400,
          //                       ),
          //                       Row(
          //                         children: [
          //                           Expanded(
          //                             child: Row(
          //                               children: [
          //                                 Image.asset(location),
          //                                 const SizedBox(
          //                                   width: 5,
          //                                 ),
          //                                 const Expanded(
          //                                     child: TextLabel(
          //                                   title:
          //                                       "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
          //                                   fontSize: 11,
          //                                   fontWeight: FontWeight.w500,
          //                                 ))
          //                               ],
          //                             ),
          //                           ),
          //                         ],
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       Container(
          //         height: 40,
          //         color: blue.withOpacity(0.3),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             RatingBar.builder(
          //               initialRating: rating,
          //               minRating: 1,
          //               direction: Axis.horizontal,
          //               itemSize: 20,
          //               unratedColor: lightGrey,
          //               allowHalfRating: true,
          //               itemCount: 5,
          //               itemPadding:
          //                   const EdgeInsets.symmetric(horizontal: 2.0),
          //               itemBuilder: (context, _) => const Icon(
          //                 Icons.star,
          //                 color: Colors.amber,
          //               ),
          //               onRatingUpdate: (rating) {
          //                 print(rating);
          //                 rating = rating;
          //               },
          //             ),
          //             TextLabel(
          //               title: rating.toString() + " Rating & Review",
          //               fontSize: 14,
          //               fontWeight: FontWeight.w500,
          //               color: black,
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 20),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const TextLabel(
          //               title: "Description",
          //               fontSize: 16,
          //               fontWeight: FontWeight.w600,
          //               color: black,
          //             ),
          //             const SizedBox(
          //               height: 5,
          //             ),
          //             const TextLabel(
          //               title:
          //                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          //               fontSize: 14,
          //               fontWeight: FontWeight.w400,
          //               color: grey,
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 20),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const TextLabel(
          //               title: "Bussiness owner",
          //               fontSize: 16,
          //               fontWeight: FontWeight.w600,
          //               color: black,
          //             ),
          //             const SizedBox(
          //               height: 5,
          //             ),
          //             Container(
          //               height: 90,
          //               child: ListView.builder(
          //                   shrinkWrap: true,
          //                   itemCount: 10,
          //                   scrollDirection: Axis.horizontal,
          //                   itemBuilder: (context, index) {
          //                     return Padding(
          //                       padding: const EdgeInsets.only(
          //                           left: 20, top: 10, bottom: 10),
          //                       child: Column(
          //                         mainAxisAlignment: MainAxisAlignment.start,
          //                         crossAxisAlignment:
          //                             CrossAxisAlignment.start,
          //                         children: [
          //                           Container(
          //                             decoration: BoxDecoration(
          //                               border: Border(
          //                                 bottom: BorderSide(
          //                                     color: grey.withOpacity(0.3),
          //                                     width: 1),
          //                                 top: BorderSide(
          //                                     color: grey.withOpacity(0.3),
          //                                     width: 1),
          //                                 right: BorderSide(
          //                                     color: grey.withOpacity(0.3),
          //                                     width: 1),
          //                                 left: BorderSide(
          //                                     color: grey.withOpacity(0.3),
          //                                     width: 1),
          //                               ),
          //                               borderRadius:
          //                                   BorderRadius.circular(10),
          //                             ),
          //                             child: SizedBox(
          //                               width: 200,
          //                               child: Padding(
          //                                 padding: const EdgeInsets.only(
          //                                     left: 10,
          //                                     right: 10,
          //                                     top: 10,
          //                                     bottom: 10),
          //                                 child: Row(
          //                                   children: [
          //                                     Image.asset(blogUser),
          //                                     const SizedBox(
          //                                       width: 10,
          //                                     ),
          //                                     Column(
          //                                       crossAxisAlignment:
          //                                           CrossAxisAlignment.start,
          //                                       children: const [
          //                                         TextLabel(
          //                                           title: "Dr. Jhone Deo",
          //                                           fontSize: 16,
          //                                           fontWeight:
          //                                               FontWeight.w600,
          //                                           color: black,
          //                                         ),
          //                                         TextLabel(
          //                                           title: "Male",
          //                                           fontSize: 12,
          //                                           fontWeight:
          //                                               FontWeight.w400,
          //                                           color: grey,
          //                                         ),
          //                                       ],
          //                                     ),
          //                                   ],
          //                                 ),
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     );
          //                   }),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          //tabbar
          // SliverPersistentHeader(
          //     pinned: true,
          //     floating: true,
          //     delegate: MyCustomHeader(
          //       expandedHeight: kToolbarHeight,
          //       tabs: Container(
          //         color: white,
          //         child: Stack(
          //           fit: StackFit.passthrough,
          //           alignment: Alignment.bottomCenter,
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 20),
          //               child: Container(
          //                 height: 3,
          //                 decoration: BoxDecoration(
          //                   color: orange.withOpacity(0.2),
          //                   borderRadius: BorderRadius.circular(3),
          //                 ),
          //               ),
          //             ),
          //             TabBar(
          //               controller: tabController,
          //               indicatorWeight: 1,
          //               indicator: MaterialIndicator(
          //                 horizontalPadding: 10,
          //                 height: 3,
          //                 topLeftRadius: 4,
          //                 topRightRadius: 4,
          //                 bottomLeftRadius: 4,
          //                 bottomRightRadius: 4,
          //                 color: orange,
          //                 tabPosition: TabPosition.bottom,
          //               ),
          //               // indicatorSize: TabBarIndicatorSize.label,
          //               labelPadding: const EdgeInsets.symmetric(
          //                   horizontal: 0, vertical: 0),
          //               labelColor: orange,
          //               unselectedLabelColor: black.withOpacity(0.6),
          //               indicatorPadding: const EdgeInsets.only(top: 0),

          //               //Tabbar item
          //               tabs: const [
          //                 Tab(
          //                   text: "Projects (50)",
          //                 ),
          //                 Tab(
          //                   text: "Complaints (200)",
          //                 )
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     )),

          //children
          // SliverFillRemaining(
          //   child: TabBarView(
          //     controller: tabController,
          //     children: const [
          //       ProjectScreen(),
          //       ComplainScreen(),
          //     ],
          //   ),
          // )
          //],
          ),
    ));
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
            children: [
              Row(
                children: [
                  Image.asset(blogUser),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextLabel(
                              title: "Dr. Jhone",
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
                          title: "Male | 29 Years | Inquired on 24th Feb, 2022",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              mobile,
                              color: orange,
                            ),
                            TextLabel(
                              title: "+91 9283928292",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: black.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xff34A951)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: TextLabel(
                            title: "Call now",
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

  //   Container(
  //     child: DefaultTabController(
  //       length: 2,
  //       child: Scaffold(
  //         backgroundColor: white,
  //         appBar: AppBar(
  //           leading: const Icon(
  //             Icons.arrow_back,
  //             color: black,
  //           ),
  //           backgroundColor: blue.withOpacity(0.2),
  //           elevation: 0,
  //           actions: const [
  //             Icon(
  //               Icons.more_vert_rounded,
  //               color: black,
  //             ),
  //           ],
  //         ),
  //         body: CustomScrollView(
  //           slivers: [
  //             SliverToBoxAdapter(
  //               key: UniqueKey(),
  //               child: Column(
  //                 children: [
  //                   Container(
  //                     color: blue.withOpacity(0.2),
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(left: 20.0, right: 20),
  //                       child: Row(
  //                         children: [
  //                           Image.asset(
  //                             hoccoImage,
  //                             height: 100,
  //                           ),
  //                           const SizedBox(
  //                             width: 15,
  //                           ),
  //                           Expanded(
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(
  //                                   top: 10.0, bottom: 10),
  //                               child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   const TextLabel(
  //                                     title: "Hocco",
  //                                     fontSize: 24,
  //                                     fontWeight: FontWeight.w700,
  //                                   ),
  //                                   const TextLabel(
  //                                     title: "Food",
  //                                     fontSize: 18,
  //                                     fontWeight: FontWeight.w400,
  //                                   ),
  //                                   Row(
  //                                     children: [
  //                                       Expanded(
  //                                         child: Row(
  //                                           children: [
  //                                             Image.asset(location),
  //                                             const SizedBox(
  //                                               width: 5,
  //                                             ),
  //                                             const Expanded(
  //                                                 child: TextLabel(
  //                                               title:
  //                                                   "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
  //                                               fontSize: 11,
  //                                               fontWeight: FontWeight.w500,
  //                                             ))
  //                                           ],
  //                                         ),
  //                                       ),
  //                                     ],
  //                                   )
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   Container(
  //                     height: 40,
  //                     color: blue.withOpacity(0.3),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         RatingBar.builder(
  //                           initialRating: rating,
  //                           minRating: 1,
  //                           direction: Axis.horizontal,
  //                           itemSize: 20,
  //                           unratedColor: lightGrey,
  //                           allowHalfRating: true,
  //                           itemCount: 5,
  //                           itemPadding:
  //                               const EdgeInsets.symmetric(horizontal: 2.0),
  //                           itemBuilder: (context, _) => const Icon(
  //                             Icons.star,
  //                             color: Colors.amber,
  //                           ),
  //                           onRatingUpdate: (rating) {
  //                             print(rating);
  //                             rating = rating;
  //                           },
  //                         ),
  //                         TextLabel(
  //                           title: rating.toString() + " Rating & Review",
  //                           fontSize: 14,
  //                           fontWeight: FontWeight.w500,
  //                           color: black,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 10,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 20),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         const TextLabel(
  //                           title: "Description",
  //                           fontSize: 16,
  //                           fontWeight: FontWeight.w600,
  //                           color: black,
  //                         ),
  //                         const SizedBox(
  //                           height: 5,
  //                         ),
  //                         const TextLabel(
  //                           title:
  //                               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  //                           fontSize: 14,
  //                           fontWeight: FontWeight.w400,
  //                           color: grey,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 20,
  //                   ),
  //                   // Padding(
  //                   //   padding: const EdgeInsets.only(left: 20),
  //                   //   child: Column(
  //                   //     crossAxisAlignment: CrossAxisAlignment.start,
  //                   //     children: [
  //                   //       const TextLabel(
  //                   //         title: "Bussiness owner",
  //                   //         fontSize: 16,
  //                   //         fontWeight: FontWeight.w600,
  //                   //         color: black,
  //                   //       ),
  //                   //       const SizedBox(
  //                   //     height: 5,
  //                   //   ),
  //                   //   Container(
  //                   //     height: 90,
  //                   //     child: ListView.builder(
  //                   //         shrinkWrap: true,
  //                   //         itemCount: 10,
  //                   //         scrollDirection: Axis.horizontal,
  //                   //         itemBuilder: (context, index) {
  //                   //           return Padding(
  //                   //             padding: const EdgeInsets.only(
  //                   //                 left: 20, top: 10, bottom: 10),
  //                   //             child: Column(
  //                   //               mainAxisAlignment: MainAxisAlignment.start,
  //                   //               crossAxisAlignment: CrossAxisAlignment.start,
  //                   //               children: [
  //                   //                 Container(
  //                   //                   decoration: BoxDecoration(
  //                   //                     border: Border(
  //                   //                       bottom: BorderSide(
  //                   //                           color: grey.withOpacity(0.3),
  //                   //                           width: 1),
  //                   //                       top: BorderSide(
  //                   //                           color: grey.withOpacity(0.3),
  //                   //                           width: 1),
  //                   //                       right: BorderSide(
  //                   //                           color: grey.withOpacity(0.3),
  //                   //                           width: 1),
  //                   //                       left: BorderSide(
  //                   //                           color: grey.withOpacity(0.3),
  //                   //                           width: 1),
  //                   //                     ),
  //                   //                     borderRadius: BorderRadius.circular(10),
  //                   //                   ),
  //                   //                   child: SizedBox(
  //                   //                     width: 200,
  //                   //                     child: Padding(
  //                   //                       padding: const EdgeInsets.only(
  //                   //                           left: 10,
  //                   //                           right: 10,
  //                   //                           top: 10,
  //                   //                           bottom: 10),
  //                   //                       child: Row(
  //                   //                         children: [
  //                   //                           Image.asset(blogUser),
  //                   //                           const SizedBox(
  //                   //                             width: 10,
  //                   //                           ),
  //                   //                           Column(
  //                   //                             crossAxisAlignment:
  //                   //                                 CrossAxisAlignment.start,
  //                   //                             children: const [
  //                   //                               TextLabel(
  //                   //                                 title: "Dr. Jhone Deo",
  //                   //                                 fontSize: 16,
  //                   //                                 fontWeight: FontWeight.w600,
  //                   //                                 color: black,
  //                   //                               ),
  //                   //                               TextLabel(
  //                   //                                 title: "Male",
  //                   //                                 fontSize: 12,
  //                   //                                 fontWeight: FontWeight.w400,
  //                   //                                 color: grey,
  //                   //                               ),
  //                   //                             ],
  //                   //                           ),
  //                   //                         ],
  //                   //                       ),
  //                   //                     ),
  //                   //                   ),
  //                   //                 ),
  //                   //               ],
  //                   //             ),
  //                   //           );
  //                   //         }),
  //                   //   ),

  //                   //     ],
  //                   //   ),
  //                   // ),

  //                   const SizedBox(
  //                     height: 10,
  //                   ),
  //                   Expanded(
  //                     child: Scaffold(
  //                       backgroundColor: white,
  //                       appBar: PreferredSize(
  //                         preferredSize: const Size.fromHeight(kToolbarHeight),
  //                         child: Padding(
  //                           padding: const EdgeInsets.symmetric(horizontal: 20),
  //                           child: Container(
  //                             color: white,

  //                             //Tab bar
  //                             child: Stack(
  //                               fit: StackFit.passthrough,
  //                               alignment: Alignment.bottomCenter,
  //                               children: [
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(
  //                                       horizontal: 20),
  //                                   child: Container(
  //                                     height: 3,
  //                                     decoration: BoxDecoration(
  //                                       color: orange.withOpacity(0.2),
  //                                       borderRadius: BorderRadius.circular(3),
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 TabBar(
  //                                   indicatorWeight: 1,
  //                                   indicator: MaterialIndicator(
  //                                     horizontalPadding: 10,
  //                                     height: 3,
  //                                     topLeftRadius: 4,
  //                                     topRightRadius: 4,
  //                                     bottomLeftRadius: 4,
  //                                     bottomRightRadius: 4,
  //                                     color: orange,
  //                                     tabPosition: TabPosition.bottom,
  //                                   ),
  //                                   // indicatorSize: TabBarIndicatorSize.label,
  //                                   labelPadding: const EdgeInsets.symmetric(
  //                                       horizontal: 0, vertical: 0),
  //                                   labelColor: orange,
  //                                   unselectedLabelColor:
  //                                       black.withOpacity(0.6),
  //                                   indicatorPadding:
  //                                       const EdgeInsets.only(top: 0),

  //                                   //Tabbar item
  //                                   tabs: const [
  //                                     Tab(
  //                                       text: "Projects (50)",
  //                                     ),
  //                                     Tab(
  //                                       text: "Complaints (200)",
  //                                     )
  //                                   ],
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       //Tabbar view
  //                       body: const TabBarView(
  //                         children: [
  //                           ProjectScreen(),
  //                           ComplainScreen(),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class MyCustomHeader extends SliverPersistentHeaderDelegate {
  MyCustomHeader({
    @required this.expandedHeight,
    this.tabs,
    this.context,
  });

  final Widget? tabs;
  final double? expandedHeight;
  final BuildContext? context;

  @override
  double get maxExtent => expandedHeight!;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabs,
    );
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
                  hintStyle: TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.w400),
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
            children: [
              Row(
                children: [
                  Image.asset(blogUser),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextLabel(
                              title: "Dr. Jhone",
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
                          title: "Male | 29 Years | Inquired on 24th Feb, 2022",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              mobile,
                              color: orange,
                            ),
                            TextLabel(
                              title: "+91 9283928292",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: black.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xff34A951)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: TextLabel(
                            title: "Call now",
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
            children: [
              Row(
                children: [
                  Image.asset(blogUser),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextLabel(
                              title: "Dr. Jhone ",
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
                          title: "Male | 29 Years",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              mobile,
                              color: orange,
                            ),
                            TextLabel(
                              title: " General Manager",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: black.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ],
                    ),
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
