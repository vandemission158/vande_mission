import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/card_top.dart';
import 'package:vande_mission/widgets/expandable_text_widget.dart';
import 'package:vande_mission/widgets/user_time_row.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

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
                  const CardTop(
                    title: "Offer",
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                ExpandableTextWidget(
                                  title:
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text More Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text More',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  maxlines: 3,
                                  color: white,
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
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
