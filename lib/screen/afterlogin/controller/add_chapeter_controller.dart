import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/add_group_screen.dart';

class AddChapterController extends GetxController {


  QuillController controller = QuillController.basic();

  createNewGroupScreen() {
    Get.to(() => AddGroupScreen());
  }
}
