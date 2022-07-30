import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
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
          padding: const EdgeInsets.only(left:16,right: 16,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Payment Details",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: black),),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("Bank Details",style: TextStyle(color: orange,fontWeight: FontWeight.w500,fontSize: 16),),
                    Text("Wallet",style: TextStyle(color: lightGrey,fontWeight: FontWeight.w500,fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(color: orange),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(color: orange.withOpacity(0.2)),
                    ),
                  ),
                ],),
              ),
              ListView.builder(itemBuilder: ((context, index) {
                return Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: greenlight,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(bankImage)
                        ],
                      ),
                      Column(
                        children: [
                          Text("HDFC Bank Ltd",style: TextStyle(color: black,fontWeight: FontWeight.w600,fontSize: 20),),
                          Text("Maulik Patel | XXXX1829",style: TextStyle(color: black,fontWeight: FontWeight.w400,fontSize: 16),),
                          Text("Savings | IFSC HDFC0001679",style: TextStyle(color: black.withOpacity(0.5),fontWeight: FontWeight.w400,fontSize: 12),)
                        ],
                      ),
                      Icon(Icons.more)
                    ],
                  ),
                );
              })
              )
            ],
          ),
        ),
      );    
  }
}