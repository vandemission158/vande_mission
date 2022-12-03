import 'package:get/get.dart';
import 'package:vande_mission/screen/afterlogin/view/book_preview_screen.dart';

class ViewBookController extends GetxController {
  var rating = 3.5.obs;
  var chapterList = [
    {
      "name": "Chapter 1",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    },
    {
      "name": "Chapter 2",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    },
    {
      "name": "Chapter 3",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    },
    {
      "name": "Chapter 4",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    },
    {
      "name": "Chapter 5",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    }
  ].obs;

  void onTapReading(){
    Get.to(()=>BookPreviewScreen());
  }
}
