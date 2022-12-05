import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vande_mission/helper/app_color.dart';

class BusinessDetailScreen extends StatelessWidget {
  BusinessDetailScreen({Key? key}) : super(key: key);
  // final BusinessDetailController controller = Get.put(BusinessDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: white, foregroundColor: black, elevation: 0, actions: []),
      backgroundColor: white,
      // body: Obx(
      //   () => Column(),
      // )
    );
  }

  // Widget chapterList(int index) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 0, bottom: 15, right: 20, left: 20),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(top: 13),
  //           child: Container(
  //             height: 6,
  //             width: 6,
  //             decoration: BoxDecoration(color: orange, borderRadius: BorderRadius.circular(6)),
  //           ),
  //         ),
  //         const SizedBox(
  //           width: 10,
  //         ),
  //         Expanded(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Align(
  //                 alignment: Alignment.topLeft,
  //                 child: TextLabel(
  //                   textAlign: TextAlign.start,
  //                   title: controller.chapterList[index]["name"].toString(),
  //                   fontSize: 24,
  //                   fontWeight: FontWeight.w400,
  //                   color: missonColor,
  //                 ),
  //               ),
  //               Align(
  //                 alignment: Alignment.topLeft,
  //                 child: TextLabel(
  //                   textAlign: TextAlign.start,
  //                   title: controller.chapterList[index]["title"].toString(),
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w400,
  //                   color: black.withOpacity(0.5),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
