import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vande_mission/helper/app_color.dart';

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
            children: const [
              Text("Payment Details",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: black),),

            ],
          ),
        ),
      );    
  }
}