import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/add_blog.dart';

class NewOfferController extends GetxController{
  var items = [
  "Home Applience",
  "Office Applience",
  "Land Applience"
];

  String dropdownvalue = "Home Applience";

 createBlogMove(){
  Get.to(AddBlogScreen());
 }

}