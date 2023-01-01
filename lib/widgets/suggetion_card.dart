import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 220,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: grey.withOpacity(0.1))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  right: 20,
                  left: 5
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 10, left: 10, top: 5, bottom: 5),
                      child: TextLabel(
                        title: 'Suggested member',
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
                height: 140,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    familyImage2,
                                    height: 95,
                                    width: 95,
                                  )),
                              const TextLabel(
                                title: "Jhone",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              const TextLabel(
                                title: "+Connect",
                                fontSize: 12,
                                color: blue,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )),
    ));
  }
}
