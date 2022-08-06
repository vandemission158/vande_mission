import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/afterlogin/view/create_new_group.dart';
import 'package:vande_mission/screen/afterlogin/controller/modal/view/payment.dart';
import 'package:vande_mission/screen/afterlogin/demo_payment.dart';
import 'package:vande_mission/screen/afterlogin/view/homepage.dart';
import 'package:vande_mission/screen/beforelogin/view/add_new_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/register_new_family.dart';
import 'package:vande_mission/screen/splash/splash_screen.dart';

import 'screen/afterlogin/view/componet_screen.dart';
import 'package:vande_mission/screen/beforelogin/view/lets_add_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';
import 'screen/beforelogin/view/address_list.dart';

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
      home: Splash(),
      // home: LoginScreen(),
    );
  }
}
