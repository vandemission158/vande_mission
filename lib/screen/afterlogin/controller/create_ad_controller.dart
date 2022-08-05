import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAdContrller extends GetxController {

 TextEditingController famaily = TextEditingController();

 validation1(){

  if(famaily.text.isEmpty)
  {
    return "Please enetr fmaily";
  }
  null;

 }

 createAdSecondMove()
 {
  
 }

}