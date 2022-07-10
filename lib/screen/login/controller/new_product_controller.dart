import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/new_property_screen.dart';

class NewProductController extends GetxController{
  var items = [
  "Home Applience",
  "Office Applience",
  "Land Applience"
];

  String dropdownvalue = "Home Applience";

 newProperty(){
  Get.to(NewPropertyScreen());
 }

}