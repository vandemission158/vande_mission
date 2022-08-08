import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/add_group_screen.dart';

class AddChapterController extends GetxController{

 createNewGroupScreen(){
  Get.to(()=>AddGroupScreen());
 }

}