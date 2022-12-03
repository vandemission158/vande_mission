import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';
import '../helper/image_constant.dart';
import 'text_label.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key? key}) : super(key: key);

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
                              title: 'Book',
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
                  Image.asset(blogImage),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextLabel(
                    title: 'Spaceman',
                    fontSize: 16,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      TextLabel(
                        title: 'Mike Massimino',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: black.withOpacity(0.5),
                        width: 1,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextLabel(
                        title: '20 Chapter',
                        fontSize: 13,
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: black.withOpacity(0.5),
                        width: 1,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(star),
                    ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextLabel(
                            title: 'Book Price',
                            fontSize: 13,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            title: '₹20',
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Container(
                        height: 55,
                        width: Constants.width(context) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: vandeColor),
                        child: const Center(
                          child: TextLabel(
                            title: "Buy Now",
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
