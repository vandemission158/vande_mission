import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

class inquirypage extends StatelessWidget {
  const inquirypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: black.withOpacity(0.5))),
              child: Stack(
                children: [
                  const Positioned(
                      top: 10, right: 20, child: Icon(Icons.more_vert_rounded)),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/girlimage.png"),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const TextLabel(
                                  title: "Maulik Patel",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                                TextLabel(
                                  title:
                                      "Male | 29 Years | Inquired on 24th Feb, 2022",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: black.withOpacity(0.5),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      mobile,
                                      color: orange,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextLabel(
                                        title: "+91 9283928292",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: black.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 2,
                          color: black.withOpacity(0.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12,left: 15,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
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
                              ),
                              Container(
                                  height: 33,
                                  width: 82,
                                  decoration: BoxDecoration(
                                      color: green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: TextLabel(
                                      title: "Call Now",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: white,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
