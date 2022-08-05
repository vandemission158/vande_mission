import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/add_chapeter.dart';

class CreateBookController extends GetxController{

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