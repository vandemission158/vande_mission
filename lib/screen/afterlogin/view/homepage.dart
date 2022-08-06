import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/afterlogin/controller/homepage_controller.dart';

import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/text_label.dart';
import '../../setting/profile.dart';
import '../../setting/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: black,
        actions: [
          GestureDetector(
              onTap: () => Get.to(() => const Setting()), child: Image.asset(search)),
          GestureDetector(
              onTap: () => Get.to(() => const Profile()),
              child: Image.asset(notificationIcon)),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: black,
            ),
          ),
        ],
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
      ),
      drawer: SizedBox(
        width: Constants.width(context),
        child: Drawer(
          child: Column(
            // Important: Remove any padding from the ListView.
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 175,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [linearOrangeLight, linearOrangeLight2]),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 45),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(drawerUser),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextLabel(
                                        title: 'John Doe',
                                        fontSize: 20,
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(mobile),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const TextLabel(
                                            title: '+9198172893092',
                                            fontSize: 12,
                                            color: white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(close, color: white)
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 40,
                            width: Constants.width(context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: drawerBoxColor),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    TextLabel(
                                      title: "Family identity number",
                                      fontSize: 12,
                                      color: white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    TextLabel(
                                      title: "xxx-xxxx-xxxxx",
                                      fontSize: 16,
                                      color: white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 25,
                    right: 25,
                    child: Container(
                      height: 40,
                      width: Constants.width(context) / 1.150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 20),
                          child: Row(
                            children: [
                              Image.asset(search, color: missonColor),
                              const SizedBox(width: 10),
                              TextLabel(
                                title: "Search here",
                                fontSize: 14,
                                color: missonColor.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(shrinkWrap: true, children: [
                  SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 0.75,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: green.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(department),
                                )),
                              ),
                              const TextLabel(
                                title: 'Department',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: bluePanchayat.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(panchayat),
                                )),
                              ),
                              const TextLabel(
                                title: 'Panchayat',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(society),
                                )),
                              ),
                              const TextLabel(
                                title: 'Society',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: pinkVillage.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(village),
                                )),
                              ),
                              const TextLabel(
                                title: 'Village',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightPink.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(skillTalent),
                                )),
                              ),
                              const TextLabel(
                                title: 'Skill & Talent',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightblue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(business),
                                )),
                              ),
                              const TextLabel(
                                title: 'Business',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    color: greylight,
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 0.75,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: green.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(group),
                                )),
                              ),
                              const TextLabel(
                                title: 'Group',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: bluePanchayat.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(book),
                                )),
                              ),
                              const TextLabel(
                                title: 'Book',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(events),
                                )),
                              ),
                              const TextLabel(
                                title: 'Events',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: pinkVillage.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(work),
                                )),
                              ),
                              const TextLabel(
                                title: 'Work',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightPink.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(blogs),
                                )),
                              ),
                              const TextLabel(
                                title: 'Blogs',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightblue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(jobs),
                                )),
                              ),
                              const TextLabel(
                                title: 'Jobs',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightblue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(products),
                                )),
                              ),
                              const TextLabel(
                                title: 'Products',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightblue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(properties),
                                )),
                              ),
                              const TextLabel(
                                title: 'Properties',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    color: greylight,
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 0.75,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: lightblue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(text),
                                )),
                              ),
                              const TextLabel(
                                title: 'Text',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(photos),
                                )),
                              ),
                              const TextLabel(
                                title: 'Photos',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(videos),
                                )),
                              ),
                              const TextLabel(
                                title: 'Videos',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(movies),
                                )),
                              ),
                              const TextLabel(
                                title: 'Movies',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(music),
                                )),
                              ),
                              const TextLabel(
                                title: 'Music',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(ringtone),
                                )),
                              ),
                              const TextLabel(
                                title: 'Ringtone',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: yellowSociety.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Image.asset(notifications),
                                )),
                              ),
                              const TextLabel(
                                title: 'Notifications',
                                fontSize: 12,
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )
              // ListTile(
              //   leading: const Icon(
              //     Icons.home,
              //   ),
              //   title: const Text('Page 1'),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              // ListTile(
              //   leading: const Icon(
              //     Icons.train,
              //   ),
              //   title: const Text('Page 2'),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  annoncementCard(context),
                  advertisementCard(),
                  offerCard(),
                  bookCard(),
                  propertyCard(),
                  productCard(),
                  jobsCard(),
                  videoCard(),
                  photosCard(),
                  bussinessCard(),
                  blogCard(),
                  eventCard(context),
                  whetherCard(),
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
      backgroundColor: white,
    );
  }

  Widget whetherCard() {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: darkGrey.withOpacity(0.1))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextLabel(
                  title: '19°',
                  fontSize: 44,
                  color: darkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 66,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [linearRed, linearOrange]),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: darkGrey.withOpacity(0.1))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 180),
                  child: Text(
                    "H:24°  L:18° Mid Rain Ahmedabad, India",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(top: 20, right: 40, child: Image.asset(rain))
    ]);
  }

  Widget eventCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Event',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: 'Comedy Central Show',
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          TextLabel(
                            title: "04, April, 2022 | 10AM - 11AM",
                            fontSize: 13,
                            color: black.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Image.asset(location),
                              const SizedBox(
                                width: 5,
                              ),
                              const TextLabel(
                                title: "2346 Pineview Drive, MN 56082",
                                fontSize: 13,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(qrCode)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: Constants.width(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: vandeColor),
                    child: const Center(
                      child: TextLabel(
                        title: "I am interested",
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blogCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Blog',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: 'Which image is better?',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget productCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Product',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: 'Table Lamps',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title: 'New Product',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextLabel(
                            title: 'Product Price',
                            fontSize: 13,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '₹12',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Container(
                        height: 55,
                        width: Constants.width(context) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: vandeColor),
                        child: const Center(
                          child: TextLabel(
                            title: "Inquire Now",
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget propertyCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Property',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: '2BHK Bunglow for Sale',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title: 'New Property',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextLabel(
                            title: 'Estimated Price',
                            fontSize: 13,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '24 Lacks',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Container(
                        height: 55,
                        width: Constants.width(context) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: vandeColor),
                        child: const Center(
                          child: TextLabel(
                            title: "Inquire Now",
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bookCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Book',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: 'Spaceman',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      TextLabel(
                        title: 'Mike Massimino',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: black.withOpacity(0.5),
                        width: 1,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextLabel(
                        title: '20 Chapter',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: black.withOpacity(0.5),
                        width: 1,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(star),
                    ],
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextLabel(
                            title: 'Book Price',
                            fontSize: 13,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '₹20',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Container(
                        height: 55,
                        width: Constants.width(context) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: vandeColor),
                        child: const Center(
                          child: TextLabel(
                            title: "Buy Now",
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget advertisementCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Advertisement',
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
                  Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(advertisementImage),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Image.asset(fbImage),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 5, left: 20),
                            child: TextLabel(
                              title: 'Facebook -  Famous social media',
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 55,
                width: Constants.width(context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: vandeColor),
                child: const Center(
                  child: TextLabel(
                    title: "I am interested",
                    fontSize: 16,
                    color: white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget offerCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Offer',
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
                  Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(offerImage),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 80),
                            child: TextLabel(
                              title: 'Buy 2 Get 1 Free',
                              fontSize: 30,
                              color: white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: 'Offer on Jeans',
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.w700,
                                ),
                                TextLabel(
                                  title:
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text More',
                                  fontSize: 13,
                                  color: white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget jobsCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Jobs',
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
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: 'Sr. UI/UX Designer',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title: 'Lollypop Design Studio, Banglore',
                    fontSize: 14,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: const [
                          TextLabel(
                            title: 'Positions',
                            fontSize: 15,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '03',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          TextLabel(
                            title: 'Experience',
                            fontSize: 15,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '4+ years',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          TextLabel(
                            title: 'Education',
                            fontSize: 15,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: 'Masters',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: Constants.width(context),
                    color: lineColor,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextLabel(
                    title: 'Job Description',
                    fontSize: 15,
                    color: lableColor,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    width: Constants.width(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: vandeColor),
                    child: const Center(
                      child: TextLabel(
                        title: "Apply Now",
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget photosCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
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
                  // ListView.builder(
                  //   physics: const AlwaysScrollableScrollPhysics(),
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: controller.images.length,
                  //     itemBuilder: (context, index) {
                  //       return Card(
                  //         child: Image.asset(controller.images[index]),
                  //       );
                  //     }),
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget videoCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Video',
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
                  Stack(children: [
                    Image.asset(videoImage),
                    Positioned(
                        top: 10, right: 20, child: Image.asset(circleClose))
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(redHeart),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "122",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(redComment),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextLabel(
                              title: "10K",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(share)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bussinessCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: black.withOpacity(0.02),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: darkGrey.withOpacity(0.1))),
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
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Business',
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
                  Row(
                    children: [
                      Image.asset(hoccoImage),
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
                          // const TextLabel(
                          //   title:
                          //       'Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008',
                          //   fontSize: 11,
                          //   color: black,
                          //   fontWeight: FontWeight.w400,
                          // ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(map),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: Constants.width(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: vandeColor),
                    child: const Center(
                      child: TextLabel(
                        title: "Inquiry",
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(blogUser),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextLabel(
                                title: "Farita Smith",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w700,
                              ),
                              TextLabel(
                                title: "@SmithFa",
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextLabel(
                        title: "05 March 2022 5:00AM",
                        fontSize: 12,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget annoncementCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: cardColor),
        height: 125,
        width: Constants.width(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [linearPurple, linearpink]),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          right: 10, left: 10, top: 5, bottom: 5),
                      child: TextLabel(
                        title: 'Announcement',
                        fontSize: 10,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Image.asset(close)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextLabel(
                title:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry lipsum event.',
                fontSize: 12,
                color: black,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(cardImage1),
                      const SizedBox(
                        width: 5,
                      ),
                      const TextLabel(
                        title: 'Jayesh Patel',
                        fontSize: 12,
                        color: darkGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  TextLabel(
                    title: '05 March 2022 5:00AM',
                    fontSize: 12,
                    color: darkGrey.withOpacity(0.4),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(smily)),
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
                            style: GoogleFonts.lato(
                                color: context.theme.focusColor,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              hintText: 'Type here'.tr,
                              hintStyle: GoogleFonts.lato(
                                  color: context.theme.hintColor,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                  onTap: () => print("Hello3"),
                  child: Image.asset(crossArrow),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap:()=> controller.bottomSheetFirstname(context),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(25)),
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
