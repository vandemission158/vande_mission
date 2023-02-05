import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/setting/profile_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../helper/app_color.dart';
import '../../helper/image_constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: greenlight,
        foregroundColor: black,
        elevation: 0,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: TextLabel(
                title: "Edit",
                color: orange,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 95,
                        decoration: const BoxDecoration(color: greenlight, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                      ),
                      Container(
                        height: 95,
                        decoration: const BoxDecoration(color: white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                      ),
                    ],
                  ),
                  Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(120), border: Border.all(width: 1, color: orange)),
                      child: Center(
                        child: Image.asset(
                          profileUser,
                          width: 130,
                          height: 130,
                          fit: BoxFit.contain,
                        ),
                      ))
                ],
              ),
              const TextLabel(
                title: "Jhone Deo",
                fontSize: 24,
                color: black,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    mobile,
                    color: orange,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextLabel(
                    title: '+9198172893092',
                    fontSize: 12,
                    color: black.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        userCheck,
                        color: orange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextLabel(
                        title: '222 My Connections',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(userCheck),
                      const SizedBox(
                        width: 5,
                      ),
                      TextLabel(
                        title: '100 Connected People',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                        height: 56,
                        decoration: BoxDecoration(color: lightWhite, borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(notificationsSound),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      TextLabel(
                                        title: "Profile info",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(settingTap)
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 56,
                        decoration: BoxDecoration(color: lightWhite, borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(notificationsSound),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      TextLabel(
                                        title: "My Skills & Talent",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(settingTap)
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => PaymentScreen());
                      },
                      child: Container(
                          height: 56,
                          decoration: BoxDecoration(color: lightWhite, borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(notificationsSound),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        TextLabel(
                                          title: "Payment Info.",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(settingTap)
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => controller.logoutAPICall(),
                      child: Container(
                          height: 56,
                          decoration: BoxDecoration(color: lightWhite, borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(notificationsSound),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        TextLabel(
                                          title: "Logout",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(settingTap)
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                color: greenlight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextLabel(
                          title: "My Family Members",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.memberList.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(controller.memberList[index]["image"].toString()),
                                  SizedBox(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextLabel(
                                          title: controller.memberList[index]["name"].toString(),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: missonColor,
                                        ),
                                        Image.asset(
                                          threeDot,
                                          height: 12,
                                          width: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  TextLabel(
                                    title: controller.memberList[index]["sex"].toString(),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
