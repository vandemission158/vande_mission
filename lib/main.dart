import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/login/view/register_new_family.dart';

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
     
     home:  const RegisterNewFamily(),
    );
  }
}
