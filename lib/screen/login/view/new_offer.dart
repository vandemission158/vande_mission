import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/new_offer_controller.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class NewOfferScreen extends StatelessWidget {
   NewOfferScreen({Key? key}) : super(key: key);

   final NewOfferController newOfferController = Get.put(NewOfferController());

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const TextLabel(
                    title: 'New Offer',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                     const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Offer Title",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:20),
          child: TextField(
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "Bag 25 % discount",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Offer Promocode (Optional)",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:20),
          child: TextField(
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "A5CKVM",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                     Expanded(
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "Start Date",
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: dropdownColor,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left:12),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.calendar_month),
                                  hintText: "24/02/2002",
                                  hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400) 
                                ),
                              ),
                            ),
                          )
                        ],
                       ),
                     ),
                     const SizedBox(width: 12,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "End Date",
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: dropdownColor,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left:12),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.calendar_month),
                                  border: InputBorder.none,
                                  hintText: "24/02/2002 ",
                                  hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400) 
                                ),
                              ),
                            ),
                          )
                        ],
                       ),
                     ),
                ],
               ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Offer Category",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                height: 50,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightWhite
                ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:10,right: 10),
                   child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none, 
                    ),
                      // Initial Value
                      value: newOfferController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: newOfferController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          newOfferController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
        //       Padding(
        //       padding: const EdgeInsets.only(top: 10),
        //       child: Row(
        //         children: [
        //           Container(
        //             decoration: BoxDecoration(
        //               border: Border.all(color: blue),
        //               borderRadius: BorderRadius.circular(10)
        //             ),
        //             child: const Padding(
        //               padding: EdgeInsets.all(10),
        //               child: TextLabel(
        //                 title: "Sale",
        //                 color: blue,
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ),
        //           const SizedBox(width: 20,),
        //            Container(
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: dropdownColor,
        //             ),
        //             child: const Padding(
        //               padding: EdgeInsets.all(12),
        //               child: TextLabel(
        //                 title: "Rent",
        //                 color: grey,
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(top:10),
        //       child: TextLabel(
        //         title: "Location",
        //         color: lightGrey,
        //           fontSize: 16,
        //           fontWeight: FontWeight.w400,
        //       ),
        //     ),
        //      Padding(
        //        padding: const EdgeInsets.only(top:10),
        //        child: Container(
        // decoration: BoxDecoration(
        //   color: dropdownColor,
        //   borderRadius: BorderRadius.circular(15),
        // ),
        // child: const Padding(
        //   padding: EdgeInsets.only(left:10),
        //   child: TextField(
        //    decoration:InputDecoration(
        //     border: InputBorder.none,
        //     prefixIcon: Icon(Icons.location_pin),
        //     hintText: "301-A, Vandemataram, South Bopal",
        //     hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
        //    )
        //   ),
        // ),
        //   ),
        //      ),
        //      Padding(
        //        padding: const EdgeInsets.only(top:10),
        //        child: Image.asset(mapImage),
        //      ),
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Description",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:20),
          child: TextField(
            maxLines: 5,
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "Write here",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Upload your Offer Photos",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: lightWhite,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextLabel(
                      title: "Tap to upload",
                      color: vandeColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    Icon(Icons.file_upload_outlined)
                  ],
                ),
              ),
              ),
            ),
              const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Upload your Offer Video",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: lightWhite,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextLabel(
                      title: "Tap to upload",
                      color: vandeColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    Icon(Icons.file_upload_outlined)
                  ],
                ),
              ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Create",
                  color: blue,
                  onTap: () {
                    
                  },
                ),
             ),
             const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}