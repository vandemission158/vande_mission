import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/card_button.dart';
import 'package:vande_mission/widgets/card_top.dart';
import 'package:vande_mission/widgets/user_time_row.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class BussinessCard extends StatelessWidget {
  const BussinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const CardTop(title: "Business"),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(hoccoImage)),
                      const SizedBox(
                        width: 10,
                      ),
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
                          SizedBox(
                            width: Constants.width(context) / 1.6,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(location),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  child: TextLabel(
                                    title:
                                        "Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008",
                                    color: black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(map),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardButton(
                    title: "Inquiry",
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
          ],
        ),
      ),
    );
  }
}
