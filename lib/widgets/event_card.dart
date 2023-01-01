import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/card_bottom.dart';
import 'package:vande_mission/widgets/card_button.dart';
import 'package:vande_mission/widgets/card_top.dart';
import 'package:vande_mission/widgets/text_label.dart';
import 'package:vande_mission/widgets/user_time_row.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import '../helper/image_constant.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: grey.withOpacity(0.1))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardTop(
                    title: "Event",
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
                  const CardButton(
                    title: "I am interested",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const UserTimeRow()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CardBottom()
          ],
        ),
      ),
    );
  }
}
