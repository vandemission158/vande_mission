import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/add_chapeter_screen.dart';

class AddBookController extends GetxController{

var items = [
  "English",
  "Gujarati",
  "Hindi"
];

  String dropdownvalue = "English";

  addChepterMove(){
    Get.to(AddChapertScreen());
  }

}