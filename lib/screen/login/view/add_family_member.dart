import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';

class AddFamilyMember extends StatelessWidget {
  const AddFamilyMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        foregroundColor: black,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              const TextLabel(
                title: "lets_add",
                fontSize: 24,
                color: darkGrey,
                fontWeight: FontWeight.w700,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [blueLight, blueLight2]),
                    color: grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(
                        title: "family_number",
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextLabel(
                        title: "XXX-XXXX-XXXXX",
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(exlamation),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                            child: TextLabel(
                              title: "this_will_be",
                              fontSize: 11,
                              color: white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.directions_car)),
                        Tab(icon: Icon(Icons.directions_bike)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
