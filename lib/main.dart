import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
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
      home: HomePage(),
      // home: LoginScreen(),
    );
  }
}
