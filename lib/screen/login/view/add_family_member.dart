import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';

class AddFamilyMember extends StatelessWidget {
  const AddFamilyMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController _tabController;

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
          ),
          Expanded(
            child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    actions: [
                      
                      Tab(
                        child: Text("Hometown"),
                      ),
                      Tab(
                        child: Text("Hometown"),
                      ),
                      Tab(
                        child: Text("Hometown"),
                      )
                    ],
                    // bottom: TabBar(
                    //   tabs: [
                    //     Text("Hometown"),
                    //     Text("Hometown"),
                    //     Text("Hometown"),
                    //   ],
                    // ),
                  ),
                )),
          )
        ],
      )),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: white,
      //   foregroundColor: black,
      // ),
      // body: SafeArea(
      //     child: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      //     child: Column(
      //       children: [
      //         const TextLabel(
      //           title: "lets_add",
      //           fontSize: 24,
      //           color: darkGrey,
      //           fontWeight: FontWeight.w700,
      //         ),
      //         Container(
      //           decoration: BoxDecoration(
      //               gradient: const LinearGradient(
      //                   begin: Alignment.centerLeft,
      //                   end: Alignment.centerRight,
      //                   colors: [blueLight, blueLight2]),
      //               color: grey,
      //               borderRadius: BorderRadius.circular(10)),
      //           child: Padding(
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 const TextLabel(
      //                   title: "family_number",
      //                   fontSize: 16,
      //                   color: white,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //                 const SizedBox(
      //                   height: 15,
      //                 ),
      //                 const TextLabel(
      //                   title: "XXX-XXXX-XXXXX",
      //                   fontSize: 16,
      //                   color: white,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //                 const SizedBox(
      //                   height: 15,
      //                 ),
      //                 Row(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(top: 5),
      //                       child: Image.asset(exlamation),
      //                     ),
      //                     const SizedBox(
      //                       width: 5,
      //                     ),
      //                     const Expanded(
      //                       child: TextLabel(
      //                         title: "this_will_be",
      //                         fontSize: 11,
      //                         color: white,
      //                         fontWeight: FontWeight.w400,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         // Container(
      //         //   child: TabBar(
      //         //     labelColor: black,
      //         //     unselectedLabelColor: grey,
      //         //     // controller: _tabController,
      //         //     tabs: [
      //         //       Tab(
      //         //         text: "hometown".tr,
      //         //       ),
      //         //       Tab(
      //         //         text: "hometown".tr,
      //         //       ),
      //         //       Tab(
      //         //         text: "hometown".tr,
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // Container(
      //         //   width: Constants.width(context),
      //         //   height: 300,
      //         //   child: TabBarView(
      //         //       //controller: _tabController,
      //         //       children: [
      //         //         Text("hi"),
      //         //         Text("hi"),
      //         //         Text("hi"),
      //         //       ]),
      //         // )
      //         // // DefaultTabController(
      //         // //   length: 2,
      //         // //   child: Scaffold(
      //         // //     appBar: AppBar(
      //         // //       bottom: TabBar(
      //         // //         tabs: [
      //         // //           Tab(icon: Icon(Icons.directions_car)),
      //         // //           Tab(icon: Icon(Icons.directions_bike)),
      //         // //         ],
      //         // //       ),
      //         // //     ),
      //         // //   ),
      //         // // )
      //       ],
      //     ),
      //   ),
      // )),
    );
  }
}
