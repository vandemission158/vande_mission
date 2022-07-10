import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../helper/app_color.dart';

class JoinMemberScreen extends StatelessWidget {
  const JoinMemberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
           appBar: PreferredSize(
            preferredSize:  Size(MediaQuery.of(context).size.width,160),
             child: AppBar(
                backgroundColor:greenlight,
                elevation: 0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
                leading: const Icon(Icons.arrow_back,color: black,),
                actions: [
                  Padding(
              padding: const EdgeInsets.only(right:20),
              child: Row(
                children: const [
                  TextLabel(
                    title: "Donate",
                    color: Color(0xff1460E3),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 20,),
                   TextLabel(
                    title: "Edit",
                    color: orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
                  )
                ],
             ),
           ),
           body: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left:16,right: 16,top: 70),
                 child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextLabel(
                          title:"Group Name" ,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextLabel(
                          title:"Created at 05 March 2022 5:00AM" ,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black.withOpacity(0.4),
                          )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Container(
                        height: 50,width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                           color: dropdownColor,
                           borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(children: const [
                          SizedBox(width: 10,),
                          Icon(Icons.person_pin_circle_outlined,color: orange,),
                          SizedBox(width: 10,),
                          SizedBox(
                            width: 280,
                            child: TextLabel(
                              title: "Shivalik 7 building near rambag, Maninagar, Ahmedabad, Gujarat 380008",
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: dropdownColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.notifications,color: orange,),
                                SizedBox(width: 10,),
                                TextLabel(
                                  title: "Group’s Bank Information",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,color: blue,)
                          ],
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: dropdownColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.notifications,color: orange,),
                                SizedBox(width: 10,),
                                TextLabel(
                                  title: "Group’s Donation Fund",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,color: blue,)
                          ],
                        ),
                      ),
                    ),
                  ],
                 ),
               ),
                 const Padding(
                   padding: EdgeInsets.only(top:10),
                   child: Divider(color: orange,),
                 ),
                  const SizedBox(height: 20,)
             ],
           ),
        ),
           Positioned(
            left: 20,right: 20,top: 20,
                  child: Image.asset(joinImage))
      ],
    );
  }
}