import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/card_bottom.dart';
import 'package:vande_mission/widgets/user_time_row.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class PhotosCard extends StatelessWidget {
  const PhotosCard({Key? key}) : super(key: key);

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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      right: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [linearPurple, linearpink]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            child: TextLabel(
                              title: 'Photos',
                              fontSize: 10,
                              color: white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Image.asset(
                          threeDot,
                          color: black.withOpacity(0.5),
                        )
                      ],
                    ),
                  ),
                  // ListView.builder(
                  //   physics: const AlwaysScrollableScrollPhysics(),
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: controller.images.length,
                  //     itemBuilder: (context, index) {
                  //       return Card(
                  //         child: Image.asset(controller.images[index]),
                  //       );
                  //     }),
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextLabel(
                    title:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and More',
                    fontSize: 13,
                    color: black,
                    fontWeight: FontWeight.w400,
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
            const CardBottom(),
          ],
        ),
      ),
    );
  }
}
