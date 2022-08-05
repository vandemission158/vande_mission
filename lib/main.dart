import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/afterlogin/view/create_new_group.dart';
import 'package:vande_mission/screen/beforelogin/view/add_new_family_member.dart';
<<<<<<< HEAD
import 'package:vande_mission/screen/beforelogin/view/register_new_family.dart';

import 'screen/afterlogin/view/componet_screen.dart';
=======
import 'package:vande_mission/screen/beforelogin/view/lets_add_family_member.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';
import 'screen/beforelogin/view/address_list.dart';
>>>>>>> 7e0e2756c61a12c1b03d519ce1e79b8a781fb2be

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
      home: RegisterNewFamily(),
    );
  }
}
