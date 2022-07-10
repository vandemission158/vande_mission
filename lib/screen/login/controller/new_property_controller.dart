import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/new_offer.dart';

class NewPropertyController extends GetxController{
    var items = [
  "Home",
  "Office",
  "Land"
];

  String dropdownvalue = "Home";

 newOfferMove(){
  Get.to(NewOfferScreen());
 }

}