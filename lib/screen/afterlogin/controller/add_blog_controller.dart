import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/new_broadcast_screen.dart';

class AddBlogController extends GetxController{

    QuillController controller = QuillController.basic();


newBroadCastMove(){
  Get.to(const NewBroadCastScreen());
}

}