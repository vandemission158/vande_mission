import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/inquiry_page.dart';
import 'package:vande_mission/screen/afterlogin/controller/modal/view/payment.dart';
import 'package:vande_mission/screen/afterlogin/department_details.dart';
import 'package:vande_mission/screen/afterlogin/view/add_blog.dart';
import 'package:vande_mission/screen/afterlogin/view/add_chapeter_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/choose_family_member.dart';
import 'package:vande_mission/screen/afterlogin/view/collection_details.dart';
import 'package:vande_mission/screen/afterlogin/view/collection_music_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/collection_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/collection_text_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/collection_video_scree.dart';
import 'package:vande_mission/screen/afterlogin/department/view/department_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
import 'package:vande_mission/screen/afterlogin/view/panchayat/panchayat_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/post_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/search_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/skill/skill_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/skill_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/society/society_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/village_detail.dart';
import 'package:vande_mission/screen/beforelogin/modal/add_society_modal.dart';
import 'package:vande_mission/screen/beforelogin/view/signup_type.dart';
import 'package:vande_mission/screen/splash/splash_screen.dart';
import 'package:vande_mission/widgets/initial_loader.dart';

import 'screen/afterlogin/business_details.dart';
import 'screen/afterlogin/view/view_book_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox(dbName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      // home: const DepartmentDetail(),
      // home: inquirypage(),
      // home: LoginScreen(),
      // home:  HomePage(),
      home: Splash(),
    );
  }
}
