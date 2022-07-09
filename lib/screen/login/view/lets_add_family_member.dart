import 'package:flutter/material.dart';


import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class LetsAddFamilyMember extends StatelessWidget {
  const LetsAddFamilyMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController _tabController;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: black,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextLabel(
              title: 'let_add_family_members',
              fontSize: 26,
              color: darkGrey,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [blueLight, blueLight2]),
                        borderRadius: BorderRadius.circular(15),
                        color: lightWhite),
                    height: 125,
                    width: Constants.width(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextLabel(
                            title: 'family_identity_number',
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextLabel(
                            title: 'xxx-xxxx-xxxxx',
                            fontSize: 22,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                shapI,
                                color: white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const TextLabel(
                                title: 'this_will_be',
                                fontSize: 10,
                                color: white,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 56,
                      decoration: BoxDecoration(
                          color: lightWhite,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(aboutvandeMission),
                                const SizedBox(
                                  width: 20,
                                ),
                                const TextLabel(
                                  title: "Family Address",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Image.asset(settingTap)
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextLabel(
                    title: 'Added Family Members',
                    fontSize: 20,
                    color: darkGrey,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisExtent: 160,
                            childAspectRatio: 1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 1),
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // height: 80,
                              // width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // height: 80,
                              // width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // height: 80,
                              // width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(familyMember),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextLabel(
                                        title: 'Jhon Doe',
                                        fontSize: 12,
                                        color: darkGrey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(Icons.more_vert)
                                    ],
                                  ),
                                  TextLabel(
                                    title: 'Male',
                                    fontSize: 12,
                                    color: darkGrey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomButton(
              gradientLeft: orangeLight2,
              gradientRight: orangeLight1,
              title: "Next",
              // onTap: () => controller.onTapNext(),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Container(
    //           height: 200,
    //           color: Colors.amber,
    //         ),
    //         Expanded(
    //           child: DefaultTabController(
    //             child: Scaffold(
    //               appBar: AppBar(
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.white,
    //                   elevation: 0,
    //                   bottomOpacity: 0,
    //                   actions: [
    //                     Container(
    //                       color: Colors.red,
    //                       height: 50,
    //                       width: Constants.width(context) / 1,
    //                       child: const TabBar(tabs: [
    //                         Tab(
    //                           child: Text(
    //                             "One",
    //                             style: TextStyle(color: Colors.black),
    //                           ),
    //                         ),
    //                         Tab(
    //                           child: Text("Two",
    //                               style: TextStyle(color: Colors.black)),
    //                         ),
    //                         Tab(
    //                           child: Text(
    //                             "Three",
    //                             style: TextStyle(color: Colors.black),
    //                           ),
    //                         )
    //                       ]),
    //                     )
    //                   ]),
    //               body: TabBarView(
    //                 children: [
    //                   Container(
    //                     child: ListView(
    //                       children: [
    //                         Expanded(
    //                           child: Padding(
    //                             padding:
    //                                 const EdgeInsets.only(left: 20, right: 20),
    //                             child: GridView(
    //                               physics: const NeverScrollableScrollPhysics(),
    //                               gridDelegate:
    //                                   const SliverGridDelegateWithFixedCrossAxisCount(
    //                                       crossAxisCount: 4,
    //                                       childAspectRatio: 0.75,
    //                                       mainAxisSpacing: 15,
    //                                       crossAxisSpacing: 15),
    //                               children: [
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: green.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(group),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Group',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: bluePanchayat
    //                                               .withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(book),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Book',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: yellowSociety
    //                                               .withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(events),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Events',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color:
    //                                               pinkVillage.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(work),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Work',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: lightPink.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(blogs),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Blogs',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: lightblue.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(jobs),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Jobs',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: lightblue.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(products),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Products',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 Column(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Container(
    //                                       height: 80,
    //                                       width: 80,
    //                                       decoration: BoxDecoration(
    //                                           color: lightblue.withOpacity(0.1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10)),
    //                                       child: Center(
    //                                           child: Padding(
    //                                         padding: const EdgeInsets.all(17),
    //                                         child: Image.asset(properties),
    //                                       )),
    //                                     ),
    //                                     const TextLabel(
    //                                       title: 'Properties',
    //                                       fontSize: 12,
    //                                       color: darkGrey,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                         Text(
    //                           "Hello",
    //                           style: TextStyle(fontSize: 50),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   Text("Hello2"),
    //                   Text("Hello3"),
    //                 ],
    //               ),
    //             ),
    //             length: 3,
    //           ),
    //         ),
    //         // Container(
    //         //   height: 200,
    //         //   color: Colors.amberAccent,
    //         // )
    //       ],
    //     ),
    //   ),
    // );

    //  Scaffold(
    //   backgroundColor: white,
    //   body: SafeArea(
    //       child: Column(
    //     children: [
    //       Container(
    //         height: 100,
    //         color: Colors.red,
    //       ),
    //       Expanded(
    //         child: DefaultTabController(
    //             length: 3,
    //             child: Scaffold(
    //               appBar: AppBar(
    //                 elevation: 0,
    //                 actions: [

    //                   Tab(
    //                     child: Text("Hometown"),
    //                   ),
    //                   Tab(
    //                     child: Text("Hometown"),
    //                   ),
    //                   Tab(
    //                     child: Text("Hometown"),
    //                   )
    //                 ],
    //                 // bottom: TabBar(
    //                 //   tabs: [
    //                 //     Text("Hometown"),
    //                 //     Text("Hometown"),
    //                 //     Text("Hometown"),
    //                 //   ],
    //                 // ),
    //               ),
    //             )),
    //       )
    //     ],
    //   )),
    //   // appBar: AppBar(
    //   //   elevation: 0,
    //   //   backgroundColor: white,
    //   //   foregroundColor: black,
    //   // ),
    //   // body: SafeArea(
    //   //     child: SingleChildScrollView(
    //   //   child: Padding(
    //   //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    //   //     child: Column(
    //   //       children: [
    //   //         const TextLabel(
    //   //           title: "lets_add",
    //   //           fontSize: 24,
    //   //           color: darkGrey,
    //   //           fontWeight: FontWeight.w700,
    //   //         ),
    //   //         Container(
    //   //           decoration: BoxDecoration(
    //   //               gradient: const LinearGradient(
    //   //                   begin: Alignment.centerLeft,
    //   //                   end: Alignment.centerRight,
    //   //                   colors: [blueLight, blueLight2]),
    //   //               color: grey,
    //   //               borderRadius: BorderRadius.circular(10)),
    //   //           child: Padding(
    //   //             padding:
    //   //                 const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //   //             child: Column(
    //   //               crossAxisAlignment: CrossAxisAlignment.start,
    //   //               children: [
    //   //                 const TextLabel(
    //   //                   title: "family_number",
    //   //                   fontSize: 16,
    //   //                   color: white,
    //   //                   fontWeight: FontWeight.w400,
    //   //                 ),
    //   //                 const SizedBox(
    //   //                   height: 15,
    //   //                 ),
    //   //                 const TextLabel(
    //   //                   title: "XXX-XXXX-XXXXX",
    //   //                   fontSize: 16,
    //   //                   color: white,
    //   //                   fontWeight: FontWeight.w400,
    //   //                 ),
    //   //                 const SizedBox(
    //   //                   height: 15,
    //   //                 ),
    //   //                 Row(
    //   //                   crossAxisAlignment: CrossAxisAlignment.start,
    //   //                   children: [
    //   //                     Padding(
    //   //                       padding: const EdgeInsets.only(top: 5),
    //   //                       child: Image.asset(exlamation),
    //   //                     ),
    //   //                     const SizedBox(
    //   //                       width: 5,
    //   //                     ),
    //   //                     const Expanded(
    //   //                       child: TextLabel(
    //   //                         title: "this_will_be",
    //   //                         fontSize: 11,
    //   //                         color: white,
    //   //                         fontWeight: FontWeight.w400,
    //   //                       ),
    //   //                     ),
    //   //                   ],
    //   //                 ),
    //   //               ],
    //   //             ),
    //   //           ),
    //   //         ),
    //   //         // Container(
    //   //         //   child: TabBar(
    //   //         //     labelColor: black,
    //   //         //     unselectedLabelColor: grey,
    //   //         //     // controller: _tabController,
    //   //         //     tabs: [
    //   //         //       Tab(
    //   //         //         text: "hometown".tr,
    //   //         //       ),
    //   //         //       Tab(
    //   //         //         text: "hometown".tr,
    //   //         //       ),
    //   //         //       Tab(
    //   //         //         text: "hometown".tr,
    //   //         //       )
    //   //         //     ],
    //   //         //   ),
    //   //         // ),
    //   //         // Container(
    //   //         //   width: Constants.width(context),
    //   //         //   height: 300,
    //   //         //   child: TabBarView(
    //   //         //       //controller: _tabController,
    //   //         //       children: [
    //   //         //         Text("hi"),
    //   //         //         Text("hi"),
    //   //         //         Text("hi"),
    //   //         //       ]),
    //   //         // )
    //   //         // // DefaultTabController(
    //   //         // //   length: 2,
    //   //         // //   child: Scaffold(
    //   //         // //     appBar: AppBar(
    //   //         // //       bottom: TabBar(
    //   //         // //         tabs: [
    //   //         // //           Tab(icon: Icon(Icons.directions_car)),
    //   //         // //           Tab(icon: Icon(Icons.directions_bike)),
    //   //         // //         ],
    //   //         // //       ),
    //   //         // //     ),
    //   //         // //   ),
    //   //         // // )
    //   //       ],
    //   //     ),
    //   //   ),
    //   // )),
    // );
  }
}
