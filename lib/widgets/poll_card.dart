import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class PollCard extends StatelessWidget {
  const PollCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 10,
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
                                title: 'Poll',
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
                    const TextLabel(
                      title: "Which image is better?",
                      fontSize: 17,
                      color: black,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            blogImage,
                            height: 100,
                            width: Constants.width(context)/2.6,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            blogImage,
                            height: 100,
                            width: Constants.width(context)/2.6,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: Constants.width(context),
                      decoration: BoxDecoration(
                          color: blue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Constants.width(context) / 1.65,
                            decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10),
                              child: TextLabel(
                                title: "Image 1",
                                fontSize: 17,
                                color: white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: TextLabel(
                              title: "67%",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: Constants.width(context),
                      decoration: BoxDecoration(
                          color: blue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Constants.width(context) / 2,
                            decoration: BoxDecoration(
                                color: blue.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10),
                              child: TextLabel(
                                title: "Image 2",
                                fontSize: 17,
                                color: white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: TextLabel(
                              title: "50%",
                              fontSize: 17,
                              color: black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset(blogUser),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextLabel(
                                  title: "Farita Smith",
                                  fontSize: 17,
                                  color: black,
                                  fontWeight: FontWeight.w700,
                                ),
                                TextLabel(
                                  title: "@SmithFa",
                                  fontSize: 15,
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        TextLabel(
                          title: "05 March 2022 5:00AM",
                          fontSize: 12,
                          color: black.withOpacity(0.4),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(redHeart),
                              const SizedBox(
                                width: 10,
                              ),
                              const TextLabel(
                                title: "122",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(redComment),
                              const SizedBox(
                                width: 10,
                              ),
                              const TextLabel(
                                title: "10K",
                                fontSize: 17,
                                color: black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(share)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
