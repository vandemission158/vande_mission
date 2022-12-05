import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/view/business/business_index_screen.dart';

class MenuDrawerController extends GetxController {
  var colors = [
    green,
    bluePanchayat,
    yellowSociety,
    pinkVillage,
    lightPink,
    lightblue,
  ].obs;
  var drawerList = [
    {'name': "Department", 'image': department, 'screen': null},
    {'name': "Panchayat", 'image': panchayat, 'screen': null},
    {'name': "Society", 'image': society, 'screen': null},
    {'name': "Village", 'image': village, 'screen': null},
    {'name': "Skill & Talent", 'image': skillTalent, 'screen': null},
    {
      'name': "Business",
      'image': business,
      'screen': () => BusinessIndexScreen(),
    },
  ].obs;

  var drawerList2 = [
    {
      'name': "Group",
      'image': group,
    },
    {
      'name': "Book",
      'image': book,
    },
    {
      'name': "Events",
      'image': events,
    },
    {
      'name': "Work",
      'image': work,
    },
    {
      'name': "Blogs",
      'image': blogs,
    },
    {
      'name': "Jobs",
      'image': jobs,
    },
    {
      'name': "Products",
      'image': products,
    },
    {
      'name': "Properties",
      'image': properties,
    },
  ].obs;

  var drawerList3 = [
    {
      'name': "Text",
      'image': text,
    },
    {
      'name': "Photos",
      'image': photos,
    },
    {
      'name': "Videos",
      'image': videos,
    },
    {
      'name': "Movies",
      'image': movies,
    },
    {
      'name': "Music",
      'image': music,
    },
    {
      'name': "Ringtone",
      'image': ringtone,
    },
    {
      'name': "Notifications",
      'image': notifications,
    },
  ].obs;
}
