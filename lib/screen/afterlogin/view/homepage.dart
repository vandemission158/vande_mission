import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/afterlogin/controller/homepage_controller.dart';
import 'package:vande_mission/screen/afterlogin/view/componet_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/search_screen.dart';
import 'package:vande_mission/widgets/advertiesment_card.dart';
import 'package:vande_mission/widgets/announcement_card.dart';
import 'package:vande_mission/widgets/book_card.dart';
import 'package:vande_mission/widgets/bussiness_card.dart';
import 'package:vande_mission/widgets/drawer.dart';
import 'package:vande_mission/widgets/drawer/menu_drawer.dart';
import 'package:vande_mission/widgets/expandable_text_widget.dart';
import 'package:vande_mission/widgets/group_card.dart';
import 'package:vande_mission/widgets/jobs_card.dart';
import 'package:vande_mission/widgets/music_card.dart';
import 'package:vande_mission/widgets/offer_card.dart';
import 'package:vande_mission/widgets/photos_card.dart';
import 'package:vande_mission/widgets/property_card.dart';
import 'package:vande_mission/widgets/suggestion_group.dart';
import 'package:vande_mission/widgets/suggetion_card.dart';
import 'package:vande_mission/widgets/video_card.dart';
import 'package:vande_mission/widgets/weather_card.dart';

import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/blog_card.dart';
import '../../../widgets/card_bottom.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/event_card.dart';
import '../../../widgets/poll_card.dart';
import '../../../widgets/product_card.dart';
import '../../../widgets/text_label.dart';
import '../../../widgets/user_time_row.dart';
import '../../setting/profile.dart';
import '../../setting/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final HomePageController controller = Get.put(HomePageController());

  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    var rating = 4.5;
    tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        drawer: MenuDrawer(),
        body: SafeArea(
          child: NestedScrollView(
              key: const PageStorageKey<String>('keepTabScroll'),
              headerSliverBuilder: (context, _) {
                return [
                  SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      sliver: SliverAppBar(
                          expandedHeight: 350,
                          actions: [
                            GestureDetector(onTap: () => Get.to(() => SearchScreen()), child: Image.asset(search)),
                            GestureDetector(onTap: () => Get.to(() => const Profile()), child: Image.asset(notificationIcon)),
                            PopupMenuButton<int>(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 1,
                                  child: SizedBox(
                                      width: 180,
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.back();
                                          Get.to(() => const Profile());
                                        },
                                        child: const TextLabel(
                                          title: "My Profile",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(height: 1, color: black.withOpacity(0.30)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                          Get.to(() => const Setting());
                                        },
                                        child: const TextLabel(
                                          title: "Settings",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(height: 1, color: black.withOpacity(0.30)),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.back();
                                      Get.to(() => const Profile());
                                    },
                                    child: const TextLabel(
                                      title: "Logout",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                              offset: const Offset(0, 55),
                              color: white,
                              elevation: 2,
                            ),
                          ],
                          foregroundColor: black,
                          backgroundColor: white,
                          title: RichText(
                            text: TextSpan(
                                text: 'VANDE',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: vandeColor,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'MISSON',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: missonColor,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // navigate to desired screen
                                        })
                                ]),
                          ),
                          pinned: true,
                          elevation: 0,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const AnnouncementCard(),
                                const SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  child: SizedBox(
                                    height: 90,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(border: const Border(left: BorderSide(width: 2, color: blue), right: BorderSide(width: 2, color: blue), top: BorderSide(width: 2, color: blue), bottom: BorderSide(width: 2, color: blue)), borderRadius: BorderRadius.circular(100), color: white),
                                                  child: Container(
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: white),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(3),
                                                      child: ClipRRect(
                                                          borderRadius: BorderRadius.circular(100),
                                                          child: Image.asset(
                                                            familyImage2,
                                                            height: 50,
                                                            width: 50,
                                                          )),
                                                    ),
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.add,
                                                  color: white,
                                                )
                                              ],
                                            ),
                                            const TextLabel(
                                              title: "All",
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        ListView.builder(
                                            itemCount: 10,
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(border: const Border(left: BorderSide(width: 2, color: blue), right: BorderSide(width: 2, color: blue), top: BorderSide(width: 2, color: blue), bottom: BorderSide(width: 2, color: blue)), borderRadius: BorderRadius.circular(100), color: white),
                                                      child: Container(
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: white),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(3),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(100),
                                                              child: Image.asset(
                                                                familyImage2,
                                                                height: 50,
                                                                width: 50,
                                                              )),
                                                        ),
                                                      ),
                                                    ),
                                                    const TextLabel(
                                                      title: "Jhone",
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          forceElevated: _,
                          bottom: PreferredSize(
                              preferredSize: const Size.fromHeight(50),
                              child: Container(
                                color: white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Container(
                                    decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(10), border: Border(left: BorderSide(color: grey.withOpacity(.1)), right: BorderSide(color: grey.withOpacity(.1)), top: BorderSide(color: grey.withOpacity(.1)), bottom: BorderSide(color: grey.withOpacity(.1)))),
                                    child: TabBar(
                                      controller: tabController,
                                      indicatorWeight: 1,
                                      indicator: RectangularIndicator(
                                        horizontalPadding: 10,
                                        verticalPadding: 5,
                                        topLeftRadius: 5,
                                        topRightRadius: 5,
                                        bottomLeftRadius: 5,
                                        bottomRightRadius: 5,
                                        color: orange,
                                      ),
                                      // indicatorSize: TabBarIndicatorSize.label,
                                      labelPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                      labelColor: white,
                                      unselectedLabelColor: black.withOpacity(0.6),
                                      indicatorPadding: const EdgeInsets.only(top: 0),

                                      //Tabbar item
                                      tabs: const [
                                        Tab(
                                          text: "Feed",
                                        ),
                                        Tab(
                                          text: "Tranding",
                                        ),
                                        Tab(
                                          text: "Scheme",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))))
                ];
              },
              body: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const PollCard(),
                              const BlogCard(),
                              const OfferCard(),
                              const SuggestionCard(),
                              const AdvertiesmentCard(),

                              const EventCard(),
                              const SuggestionGroupCard(),
                              const BussinessCard(),
                              const BookCard(),
                              const GroupCard(),
                              const MusicCard(),
                              const VideoCard(),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Container(
                                  decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15), border: Border.all(color: grey.withOpacity(0.1))),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 15,
                                                bottom: 15,
                                                right: 5,
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [linearPurple, linearpink]),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                                                      child: TextLabel(
                                                        title: 'Photos',
                                                        fontSize: 10,
                                                        color: white,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    threeDot,
                                                    color: black.withOpacity(0.5),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 200,
                                              child: ListView.builder(
                                                itemCount: 2,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.horizontal,
                                                itemBuilder: ((context, index) {
                                                  return Stack(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 10),
                                                        child: Image.asset(
                                                          pollFirstImage,
                                                          height: 200,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 15,
                                                        right: 30,
                                                        child: GestureDetector(
                                                            child: Image.asset(
                                                          closeCircle,
                                                          fit: BoxFit.contain,
                                                          height: 20,
                                                          width: 20,
                                                        )),
                                                      )
                                                    ],
                                                  );
                                                }),
                                              ),
                                            ),
                                            // Image.asset(blogImage),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const TextLabel(
                                              title: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                                              fontSize: 13,
                                              color: black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const UserTimeRow()
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const CardBottom(),
                                    ],
                                  ),
                                ),
                              ),
                              const PropertyCard(),
                              // ProductCard(),
                              const JobsCard(),

                              const ProductCard(),

                              //  WeatherCard(),

                              // Expanded(
                              //   child: ListView(
                              //     padding: const EdgeInsets.all(20),
                              //     children: const <Widget>[
                              //       CircleAvatar(
                              //         maxRadius: 50,
                              //         backgroundColor: Colors.black,
                              //         child: Icon(Icons.person, color: Colors.white, size: 50),
                              //       ),
                              //       Center(
                              //         child: Text(
                              //           'Sooraj S Nair',
                              //           style: TextStyle(
                              //             fontSize: 50,
                              //           ),
                              //         ),
                              //       ),
                              //       Text(
                              //         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                              //         style: TextStyle(
                              //           fontSize: 20,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      feedDetailBottom(context)
                    ],
                  ),
                  Container(
                    child: const TextLabel(
                      title: "TR",
                    ),
                  ),
                  Container(
                    child: const TextLabel(
                      title: "Scheme",
                    ),
                  ),
                ],
              )),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 3,
  //     child: Container(
  //       color: white,
  //       // constraints: const BoxConstraints.expand(),
  //       // decoration: const BoxDecoration(
  //       //     image: DecorationImage(
  //       //         image: AssetImage(backgroundImage), fit: BoxFit.cover)),
  //       child: Scaffold(
  //         appBar: AppBar(
  //           elevation: 0,
  //           foregroundColor: black,
  //           actions: [
  //             GestureDetector(
  //                 onTap: () => Get.to(() => SearchScreen()),
  //                 child: Image.asset(search)),
  //             GestureDetector(
  //                 onTap: () => Get.to(() => const Profile()),
  //                 child: Image.asset(notificationIcon)),
  //             PopupMenuButton<int>(
  //               shape: const RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.all(Radius.circular(15.0))),
  //               itemBuilder: (context) => [
  //                 PopupMenuItem(
  //                   value: 1,
  //                   child: SizedBox(
  //                       width: 180,
  //                       child: GestureDetector(
  //                         onTap: () {
  //                           Get.back();
  //                           Get.to(() => const Profile());
  //                         },
  //                         child: const TextLabel(
  //                           title: "My Profile",
  //                           fontSize: 16,
  //                           fontWeight: FontWeight.w400,
  //                         ),
  //                       )),
  //                 ),
  //                 PopupMenuItem(
  //                   value: 2,
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Container(height: 1, color: black.withOpacity(0.30)),
  //                       const SizedBox(
  //                         height: 10,
  //                       ),
  //                       GestureDetector(
  //                         onTap: () {
  //                           Get.back();
  //                           Get.to(() => const Setting());
  //                         },
  //                         child: const TextLabel(
  //                           title: "Settings",
  //                           fontSize: 16,
  //                           fontWeight: FontWeight.w400,
  //                         ),
  //                       ),
  //                       const SizedBox(
  //                         height: 10,
  //                       ),
  //                       Container(height: 1, color: black.withOpacity(0.30)),
  //                     ],
  //                   ),
  //                 ),
  //                 PopupMenuItem(
  //                   value: 3,
  //                   child: GestureDetector(
  //                     onTap: () {
  //                       Get.back();
  //                       Get.to(() => const Profile());
  //                     },
  //                     child: const TextLabel(
  //                       title: "Logout",
  //                       fontSize: 16,
  //                       fontWeight: FontWeight.w400,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //               offset: const Offset(0, 55),
  //               color: white,
  //               elevation: 2,
  //             ),
  //           ],
  //           backgroundColor: white,
  //           // title: RichText(
  //           //   text: TextSpan(
  //           //       text: 'VANDE',
  //           //       style: GoogleFonts.poppins(
  //           //         fontSize: 16,
  //           //         fontWeight: FontWeight.w700,
  //           //         color: vandeColor,
  //           //       ),
  //           //       children: <TextSpan>[
  //           //         TextSpan(
  //           //             text: 'MISSON',
  //           //             style: GoogleFonts.poppins(
  //           //               fontSize: 16,
  //           //               fontWeight: FontWeight.w700,
  //           //               color: missonColor,
  //           //             ),
  //           //             recognizer: TapGestureRecognizer()
  //           //               ..onTap = () {
  //           //                 // navigate to desired screen
  //           //               })
  //           //       ]),
  //           // ),
  //         ),
  //         // drawer: CustomDrawer(),
  //         drawer: MenuDrawer(),
  //         body: Column(
  //           children: [
  //             AnnouncementCard(),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Expanded(
  //               child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     SingleChildScrollView(
  //                       scrollDirection: Axis.horizontal,
  //                       physics: const BouncingScrollPhysics(),
  //                       child: SizedBox(
  //                         height: 90,
  //                         child: Row(
  //                           children: [
  //                             const SizedBox(
  //                               width: 10,
  //                             ),
  //                             Column(
  //                               children: [
  //                                 Stack(
  //                                   alignment: Alignment.center,
  //                                   children: [
  //                                     Container(
  //                                       decoration: BoxDecoration(
  //                                           border: const Border(
  //                                               left: BorderSide(
  //                                                   width: 2, color: blue),
  //                                               right: BorderSide(
  //                                                   width: 2, color: blue),
  //                                               top: BorderSide(
  //                                                   width: 2, color: blue),
  //                                               bottom: BorderSide(
  //                                                   width: 2, color: blue)),
  //                                           borderRadius:
  //                                               BorderRadius.circular(100),
  //                                           color: white),
  //                                       child: Container(
  //                                         decoration: BoxDecoration(
  //                                             borderRadius:
  //                                                 BorderRadius.circular(100),
  //                                             color: white),
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.all(3),
  //                                           child: ClipRRect(
  //                                               borderRadius:
  //                                                   BorderRadius.circular(100),
  //                                               child: Image.asset(
  //                                                 familyImage2,
  //                                                 height: 50,
  //                                                 width: 50,
  //                                               )),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     const Icon(
  //                                       Icons.add,
  //                                       color: white,
  //                                     )
  //                                   ],
  //                                 ),
  //                                 const TextLabel(
  //                                   title: "All",
  //                                   fontSize: 18,
  //                                   fontWeight: FontWeight.w500,
  //                                 ),
  //                               ],
  //                             ),
  //                             ListView.builder(
  //                                 itemCount: 10,
  //                                 shrinkWrap: true,
  //                                 physics: const NeverScrollableScrollPhysics(),
  //                                 scrollDirection: Axis.horizontal,
  //                                 itemBuilder: (context, index) {
  //                                   return Padding(
  //                                     padding: const EdgeInsets.only(left: 10),
  //                                     child: Column(
  //                                       children: [
  //                                         Container(
  //                                           decoration: BoxDecoration(
  //                                               border: const Border(
  //                                                   left: BorderSide(
  //                                                       width: 2, color: blue),
  //                                                   right: BorderSide(
  //                                                       width: 2, color: blue),
  //                                                   top: BorderSide(
  //                                                       width: 2, color: blue),
  //                                                   bottom: BorderSide(
  //                                                       width: 2, color: blue)),
  //                                               borderRadius:
  //                                                   BorderRadius.circular(100),
  //                                               color: white),
  //                                           child: Container(
  //                                             decoration: BoxDecoration(
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(
  //                                                         100),
  //                                                 color: white),
  //                                             child: Padding(
  //                                               padding:
  //                                                   const EdgeInsets.all(3),
  //                                               child: ClipRRect(
  //                                                   borderRadius:
  //                                                       BorderRadius.circular(
  //                                                           100),
  //                                                   child: Image.asset(
  //                                                     familyImage2,
  //                                                     height: 50,
  //                                                     width: 50,
  //                                                   )),
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         const TextLabel(
  //                                           title: "Jhone",
  //                                           fontSize: 18,
  //                                           fontWeight: FontWeight.w500,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   );
  //                                 }),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(top: 20),
  //                       child: PreferredSize(
  //                         preferredSize: const Size.fromHeight(50),
  //                         child: Column(
  //                           children: [
  //                             Padding(
  //                               padding: const EdgeInsets.symmetric(
  //                                   horizontal: 20, vertical: 10),
  //                               child: Container(
  //                                 decoration: BoxDecoration(
  //                                     color: white,
  //                                     borderRadius: BorderRadius.circular(10),
  //                                     border: Border(
  //                                         left: BorderSide(
  //                                             color: grey.withOpacity(.1)),
  //                                         right: BorderSide(
  //                                             color: grey.withOpacity(.1)),
  //                                         top: BorderSide(
  //                                             color: grey.withOpacity(.1)),
  //                                         bottom: BorderSide(
  //                                             color: grey.withOpacity(.1)))),
  //                                 child: TabBar(
  //                                   indicatorWeight: 1,
  //                                   indicator: RectangularIndicator(
  //                                     horizontalPadding: 10,
  //                                     verticalPadding: 5,
  //                                     topLeftRadius: 5,
  //                                     topRightRadius: 5,
  //                                     bottomLeftRadius: 5,
  //                                     bottomRightRadius: 5,
  //                                     color: orange,
  //                                   ),
  //                                   // indicatorSize: TabBarIndicatorSize.label,
  //                                   labelPadding: const EdgeInsets.symmetric(
  //                                       horizontal: 0, vertical: 0),
  //                                   labelColor: white,
  //                                   unselectedLabelColor:
  //                                       black.withOpacity(0.6),
  //                                   indicatorPadding:
  //                                       const EdgeInsets.only(top: 0),

  //                                   //Tabbar item
  //                                   tabs: const [
  //                                     Tab(
  //                                       text: "Feed",
  //                                     ),
  //                                     Tab(
  //                                       text: "Tranding",
  //                                     ),
  //                                     Tab(
  //                                       text: "Scheme",
  //                                     )
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                     Expanded(
  //                       child: TabBarView(children: [
  //
  //                       ]),
  //                     )
  //                   ]),
  //             ),

  //             feedDetailBottom(context)
  //           ],
  //         ),
  //         backgroundColor: Colors.transparent,
  //       ),
  //     ),
  //   );
  // }

  Widget feedDetailBottom(
    BuildContext context,
  ) {
    return Container(
      color: skyColor.withOpacity(0.6),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(15.0), child: Image.asset(smily)),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 37,
                          child: TextField(
                            // onChanged: (value) {
                            //   if (value.isEmpty) {
                            //     controller.isEmpty(true);
                            //   }
                            //   if (value.isNotEmpty) {
                            //     controller.isEmpty(false);
                            //   }
                            // },
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            textAlignVertical: TextAlignVertical.top,
                            style: GoogleFonts.lato(color: context.theme.focusColor, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 12),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              hintText: 'Type here'.tr,
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
                            textInputAction: TextInputAction.newline,
                            //  controller: controller.commentController.value,
                          ),
                        ),
                      ),
                      ClipRRect(
                          child: Image.asset(
                        cameraIcon,
                        color: black.withOpacity(0.5),
                      )),
                    ],
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => Get.to(ComponetsScreen()),
                  child: Image.asset(crossArrow),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => controller.bottomSheetFirstname(context),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Image.asset(plusIcon),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
