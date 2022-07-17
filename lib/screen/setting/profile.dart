import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../helper/app_color.dart';
import '../../helper/image_constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                      color: greenlight,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
                Positioned(
                    top: 20,
                    right: 100,
                    left: 100,
                    child: Image.asset(profileUser))
              ],
            ),
            Column(
              children: const [
                SizedBox(
                  height: 120,
                ),
              ],
            ),
            const TextLabel(
              title: "Maulik Patel",
              fontSize: 24,
              color: black,
              fontWeight: FontWeight.w600,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                  width: 30,
                ),
                Row(
                  children: [
                    Image.asset(userCheck),
                    const SizedBox(
                      width: 5,
                    ),
                    TextLabel(
                      title: '222 Connections',
                      fontSize: 12,
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
            Container(
                height: 56,
                decoration: BoxDecoration(
                    color: lightWhite, borderRadius: BorderRadius.circular(15)),
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
                decoration: BoxDecoration(
                    color: lightWhite, borderRadius: BorderRadius.circular(15)),
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
            Container(
                height: 56,
                decoration: BoxDecoration(
                    color: lightWhite, borderRadius: BorderRadius.circular(15)),
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
          ],
        ),
      ),
    );
  }
}
