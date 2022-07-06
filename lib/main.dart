import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
import 'package:vande_mission/screen/login/view/add_family.dart';
import 'package:vande_mission/screen/login/view/componet_screen.dart';
import 'package:vande_mission/screen/login/view/login_screen.dart';
import 'package:vande_mission/screen/login/view/login_type.dart';

void main() {
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
      // home: AddFamily(),
      home:  ComponetsScreen(),
    );
  }
}
