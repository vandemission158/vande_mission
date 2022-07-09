import 'package:get/get.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/view/choose_family_member.dart';

class ChooseFamilyController extends GetxController{

 List<String> familyImages = [
   familyImage1,
   familyImage2,
   familyImage3
 ];

 List<String> member = [
  "John Doe",
  "Jess Doe",
  "Will Doe"  
 ];

 List<String> gemder = [
  "Male",
  "Female",
  "Male"
 ];

 var items = [
  "Father",
  "Mother",
  "Brother"
];

  String dropdownvalue = "Father";

}