import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
            height: 260,
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
                            title: 'Group',
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
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                  title: "Bonton Group",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                const TextLabel(
                                  title: "+20 Joined Members",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: grey,
                                ),
                                Row(
                                  children: [
                                    Image.asset(location),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const TextLabel(
                                      title: "Ahmedabad",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: grey,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const TextLabel(
                                  title: "Join Group",
                                  fontSize: 12,
                                  color: blue,
                                  fontWeight: FontWeight.w700,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            )),
      
    ));
  }
}
