import 'package:get/get.dart';
import 'package:vande_mission/screen/login/view/add_new_family_member.dart';

class LetsAddFamilyMemberController extends GetxController{

  void onTapNext(){
    Get.to(()=>AddNewFamilyMember());
  }
}