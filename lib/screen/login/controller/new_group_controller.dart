import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/join_member_screen.dart';

class NewGroupController extends GetxController{

var items = [
  "India",
  "Japan",
  "Usa"
];

  String dropdownvalue = "India";

  joinMember(){
    Get.to(JoinMemberScreen());
  }

}