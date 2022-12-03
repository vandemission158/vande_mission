import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/constant.dart';

class DepartmentDetail extends StatelessWidget {
  const DepartmentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //     body: SafeArea(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const TextLabel(
        //         title: "Ministry of Science & Technologies",
        //         fontSize: 24,
        //         fontWeight: FontWeight.w700,
        //       ),
        //       const TextLabel(
        //         title: "Mandal, Ahmedabad, Gujarat",
        //         fontSize: 16,
        //         fontWeight: FontWeight.w400,
        //       ),
        //       Container(
        //         height: 180,
        //         child: ListView.builder(
        //           itemCount: 3,
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (context, index) => Padding(
        //             padding: const EdgeInsets.only(left: 10),
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(20),
        //               child: Card(
        //                 child: Container(
        //                   decoration: BoxDecoration(
        //                     // boxShadow: const [
        //                   //   BoxShadow(
        //                   //     color: Colors.grey,
        //                   //     offset: Offset(0.0, 1.0), //(x,y)
        //                   //     blurRadius: 6.0,
        //                   //   ),
        //                   // ],
        //                       color: white, borderRadius: BorderRadius.circular(15)),
        //                   child: Column(
        //                     children: [
        //                       Image.asset(departmentDetailImage),
        //                       const TextLabel(
        //                         title: "Mr. John Doe",
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.w500,
        //                       ),
        //                       TextLabel(
        //                         title: "Cabinate Minister",
        //                         fontSize: 10,
        //                         fontWeight: FontWeight.w400,
        //                         color: black.withOpacity(0.5),
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ));
        DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: black,
          ),
          backgroundColor: white,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25, top: 10),
              child: Text(
                "Add New",
                style: TextStyle(
                    color: orange, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextLabel(
                  title: "Ministry of Science & Technologies",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                const TextLabel(
                  title: "Mandal, Ahmedabad, Gujarat",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Colors.grey,
                                //     offset: Offset(0.0, 1.0), //(x,y)
                                //     blurRadius: 6.0,
                                //   ),
                                // ],
                                color: white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Image.asset(departmentDetailImage),
                                const TextLabel(
                                  title: "Mr. John Doe",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "Cabinate Minister",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: black.withOpacity(0.5),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: TabBar(labelColor: orange, indicatorColor: orange, tabs: [
                Tab(
                  text: "Projects (50)",
                ),
                Tab(
                  text: "Complaints (200)",
                )
              ]),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: orange.withOpacity(0.3),
                              width: 2.0,
                            ),
                          ),
                        ),
                      )),
                  TabBarView(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: ((context, index) {
                            return listWidget(context);
                          })),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: ((context, index) {
                            return listWidget(context);
                          })),
                    ),
                  ]),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget listWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: grey,
            offset: Offset(
              0.5,
              0.5,
            ),
            blurRadius: 2.0,
            spreadRadius: 0.1,
          ), 
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), 
        ], borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(title: "PM Aavas Yogajan",fontSize: 16,fontWeight: FontWeight.w500,color: black,),
               TextLabel(
                  title:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                      fontSize: 12,fontWeight: FontWeight.w400,color: black.withOpacity(0.5),),
               TextLabel(
                title: "10th Nov, 2019 to 10th Nov, 2025",
                fontSize: 13,fontWeight: FontWeight.w600,color: black.withOpacity(0.5),
              ),
              Divider(
                color: black.withOpacity(0.5),
height: 2,              ),
              Row(
                children: [
                  Image.asset(location),
                  const Expanded(
                      child: TextLabel(
                    title:
                        "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
