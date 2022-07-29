import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/beforelogin/view/add_new_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/lets_add_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';

import 'screen/beforelogin/view/address_list.dart';

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
      home: LoginScreen(),
    );
  }
}
