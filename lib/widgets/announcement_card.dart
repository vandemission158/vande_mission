import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
