import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/payment_controller.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({Key? key}) : super(key: key);

  final PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: 2,
            child: Scaffold(
               appBar:AppBar(
              leading:const Icon(Icons.arrow_back,color: black,),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right:25,top: 10),
                  child: Text("Add New",style: TextStyle(color: orange,fontSize: 16,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
              body: Padding(
                padding: const EdgeInsets.only(left:16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Payment Details",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: black),),
                    const TabBar(
                      labelColor: orange,
                      indicatorColor: orange,
                      tabs: [
                      Tab(text: "Bank Details",),
                      Tab(text: "Wallet",)
                    ]),
                    Expanded(
                      child: TabBarView(
                        children: [
                         SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                             // height: 80,
                              decoration: BoxDecoration(
                                color: greenlight,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(bankImage),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:15),
                                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("HDFC Bank Ltd",style: TextStyle(color: black,fontWeight: FontWeight.w600,fontSize: 20),),
                                        const Text("Maulik Patel | XXXX1829",style: TextStyle(color: black,fontWeight: FontWeight.w400,fontSize: 16),),
                                        Text("Savings | IFSC HDFC0001679",style: TextStyle(color: black.withOpacity(0.5),fontWeight: FontWeight.w400,fontSize: 12),)
                                      ],
                                    ),
                                                ),
                                          ],
                                        ),
                                    const Icon(Icons.more_vert) 
                                  ],
                                ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:15),
                                      child: Container(
                                        height: 40,
                                        decoration:  BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(right:10),
                                              child: Text("UPI 8829@upi",style: TextStyle(color: black,fontWeight: FontWeight.w400,fontSize: 14),),
                                            )
                                          ],
                                        ),
                                      ),
                                    )                        
                                      ],
                                    ),
                              ),
                            ),
                          );
                        })
                        ),
                      ) ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:12,right: 12,top: 20),
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: blue
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:20,left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("My Current alance",style: TextStyle(color: white,fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("\$2000",style: TextStyle(color: white,fontSize: 32,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15,bottom: 5),
                            child: Divider(color: black.withOpacity(0.5),),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top:10,bottom: 15),
                            child: TextLabel(
                              color: black,
                               title: "Manage funds", 
                               fontSize: 16,
                               fontWeight: FontWeight.w700,),
                          ),
                             Padding(
                               padding: const EdgeInsets.only(top:15,bottom: 15),
                               child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                     decoration: BoxDecoration(
                                       color: paymentController.addNow == false ? white :orange,
                                      border: Border.all(color: orange),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                      child:  Center(
                                        child: TextLabel(
                                          title: "+ Add Funds",
                                          color:paymentController.addNow == false ? orange : white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                   Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color:paymentController.addNow == true? white : orange,
                                        border: Border.all(color: orange),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child:  Center(
                                        child: TextLabel(
                                          title: "Withdrawal",
                                          color:paymentController.addNow == true ? white : orange,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,),
                                      ),
                                    ),
                                  ),
                                ],
                               ),
                             ),
                             const Padding(
                               padding: EdgeInsets.only(top:10,bottom: 10,left: 10),
                               child: TextLabel(
                                title: "Add Amount",
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                               ),
                             ),
                             Container(
                              decoration: BoxDecoration(
                                color: dropdownColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                               child: const Padding(
                                 padding: EdgeInsets.only(left:18),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "₹ 500",
                                    border: InputBorder.none
                                  ),
                                 ),
                               ),
                             ),
                           paymentController.addNow == false ?
                             Padding(
                               padding: const EdgeInsets.only(top:15),
                               child: CustomButton(
                                gradientLeft: orangeLight1,
                                gradientRight: orangeLight2,
                                title: "Add Now",
                                onTap: (){
                                  paymentController.addNow = true;
                                },
                               ),
                             ): Container(),
                            paymentController.addNow == true ?
                              Column(
                              children: [
                                ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context,index){
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: green)
                                ),
                                child: Padding(
                                padding: const EdgeInsets.only(top:20,left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("My Current alance",style: TextStyle(color: white,fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("\$2000",style: TextStyle(color: white,fontSize: 32,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              );
                             }),
                              Padding(
                               padding: const EdgeInsets.only(top:15),
                               child: CustomButton(
                                gradientLeft: orangeLight1,
                                gradientRight: orangeLight2,
                                title: "Add Now",
                                onTap: (){},
                               ),
                             )
                              ],
                             ):
                             Container()
                        ],
                      )    
                      ]),
                    )
                  ]
                     ),
                ),
            ),
          );
  }
}