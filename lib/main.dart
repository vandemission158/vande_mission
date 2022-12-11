import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/inquiry_page.dart';
import 'package:vande_mission/screen/afterlogin/view/business/business_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/business/business_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/department/department_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
import 'package:vande_mission/screen/afterlogin/view/panchayat/panchayat_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/skill/skill_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/society/society_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/view/village_detail.dart';
import 'package:vande_mission/screen/splash/splash_screen.dart';

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
      home: inquirypage(),
      // home: LoginScreen(),
    );
  }
}
