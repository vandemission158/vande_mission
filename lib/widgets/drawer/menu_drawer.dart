import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/menu/controller/menu_drawer_controller.dart';

import '../../helper/app_color.dart';
import '../../helper/constant.dart';
import '../../helper/image_constant.dart';
import '../text_label.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({Key? key}) : super(key: key);
  // final MenuDrawerController controller = Get.put(MenuDrawerController());
  final MenuDrawerController controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [linearOrangeLight, linearOrangeLight2]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        TextLabel(
                                          title: '+9198172893092',
                                          fontSize: 12,
                                          color: white.withOpacity(0.5),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(onTap: () => Get.back(), child: Image.asset(close, color: white))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 40,
                          width: Constants.width(context),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: drawerBoxColor),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        // offset: Offset(
                        //   1.0,
                        //   3.0,
                        // ),
                        blurRadius: 5.0,
                        spreadRadius: 4.0,
                      ), //BoxShadow
                    ], borderRadius: BorderRadius.circular(10), color: white),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView(shrinkWrap: true, children: [
                  SizedBox(
                    height: 240,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView.builder(
                          itemCount: controller.drawerList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 0.75, mainAxisSpacing: 15, crossAxisSpacing: 15),
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  var screen = controller.drawerList[index]["screen"];
                                  if (!["", null, false, 0].contains(screen)) {
                                    Get.back();
                                    Get.to(controller.drawerList[index]["screen"]);
                                  }
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: controller.colors[(index) % controller.colors.length].withOpacity(0.10), borderRadius: BorderRadius.circular(10)),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(17),
                                        child: Image.asset(controller.drawerList[index]["image"].toString()),
                                      )),
                                    ),
                                    TextLabel(
                                      title: controller.drawerList[index]["name"].toString(),
                                      fontSize: 12,
                                      color: darkGrey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              )),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    color: greylight,
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 240,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView.builder(
                        itemCount: controller.drawerList2.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 0.75, mainAxisSpacing: 15, crossAxisSpacing: 15),
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(color: controller.colors[(index) % controller.colors.length].withOpacity(0.10), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(17),
                                child: Image.asset(controller.drawerList2[index]["image"].toString()),
                              )),
                            ),
                            TextLabel(
                              title: controller.drawerList2[index]["name"].toString(),
                              fontSize: 12,
                              color: darkGrey,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
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
                    height: 260,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView.builder(
                        itemCount: controller.drawerList3.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 0.75, mainAxisSpacing: 15, crossAxisSpacing: 15),
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(color: controller.colors[(index) % controller.colors.length].withOpacity(0.10), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(17),
                                child: Image.asset(controller.drawerList3[index]["image"].toString()),
                              )),
                            ),
                            TextLabel(
                              title: controller.drawerList3[index]["name"].toString(),
                              fontSize: 12,
                              color: darkGrey,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
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
            // )
          ],
        ),
      ),
    );
  }

  Widget gridData(
    int index,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(color: bluePanchayat.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
