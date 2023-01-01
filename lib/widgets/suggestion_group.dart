import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

class SuggestionGroupCard extends StatelessWidget {
  const SuggestionGroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
            height: 300,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: grey.withOpacity(0.1))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, right: 20, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            right: 10, left: 10, top: 5, bottom: 5),
                        child: TextLabel(
                          title: 'Suggested Groups',
                          fontSize: 16,
                          color: black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image.asset(
                        threeDot,
                        color: black.withOpacity(0.5),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    familyImage2,
                                    height: 95,
                                    width: 95,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextLabel(
                                title: "Jhone",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 150,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 15,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Image.asset(blogUser,
                                            height: 35,
                                            width: 35,
                                            ),
                                          )),
                                    ),
                                    Positioned(
                                        left: 40,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Image.asset(blogUser),
                                            ))),
                                    Positioned(
                                        left: 65,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Image.asset(blogUser),
                                            ))),
                                    Positioned(
                                        left: 90,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Image.asset(blogUser),
                                            ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextLabel(
                                title: "+20 more",
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: grey,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const TextLabel(
                                title: "Join Group",
                                fontSize: 12,
                                color: orange,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )),
      
    ));
  }
}
