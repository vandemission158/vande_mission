import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';
import '../controller/lets_add_family_member_controller.dart';

class LetsAddFamilyMember extends StatelessWidget {
  LetsAddFamilyMember({Key? key}) : super(key: key);

  final LetsAddFamilyMemberController controller =
      Get.put(LetsAddFamilyMemberController());

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
                      Column(
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
            CustomButton(
              gradientLeft: orangeLight2,
              gradientRight: orangeLight1,
              title: "Next",
              onTap: controller.onTapNext,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
