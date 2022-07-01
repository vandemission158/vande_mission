import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../helper/image_constant.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: black,
        elevation: 0,
        title: const TextLabel(
          title: "Settings",
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
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
                            Image.asset(user),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Private Account",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "Lorem ipsum sit amet dolar",
                                  fontSize: 12,
                                  color: grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Switch(
                          onChanged: (value) {
                            if (isSwitched == false) {
                              setState(() {
                                isSwitched = true;
                                textValue = 'Switch Button is ON';
                              });
                              print('Switch Button is ON');
                            } else {
                              setState(() {
                                isSwitched = false;
                                textValue = 'Switch Button is OFF';
                              });
                              print('Switch Button is OFF');
                            }
                          },
                          value: isSwitched,
                          activeColor: blue,
                          activeTrackColor: blue.withOpacity(0.5),
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
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
                            Image.asset(language),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "App Language",
                                  fontSize: 12,
                                  color: grey,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "English",
                                  fontSize: 16,
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const TextLabel(
                          title: "Change",
                          fontSize: 12,
                          color: blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
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
                            Image.asset(timezone),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Timezone ",
                                  fontSize: 12,
                                  color: grey,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "Asia/Kolkata",
                                  fontSize: 16,
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const TextLabel(
                          title: "Change",
                          fontSize: 12,
                          color: blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
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
                            Image.asset(notificationsSound),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Notifications & Sound",
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
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(devices),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Devices",
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
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(securityprivacy),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Security & Privacy",
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
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(termsconditions),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Terms & Conditions",
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
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(help),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Help",
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "About VandeMission",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "V1.0",
                                  fontSize: 12,
                                  color: grey,
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
                      color: lightWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(developeroption),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Developer Option",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: "Coming Soon",
                              fontSize: 10,
                              color: grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: white,
    );
  }
}
