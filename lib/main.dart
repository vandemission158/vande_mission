import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vande_mission/helper/constant.dart';
// import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/helper/local_string.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/view/book_chapter_create_screen.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/view/book_chapter_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/book_chapter/view/book_chapter_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/business/view/business_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/department/view/department_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/group/view/group_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/home/view/member_skill_screen.dart';
import 'package:vande_mission/screen/afterlogin/location/view/village/village_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/payment/view/payment_index_screen.dart';
import 'package:vande_mission/screen/afterlogin/home/view/member_family_screen.dart';
import 'package:vande_mission/screen/afterlogin/post/view/post_detail_screen.dart';
import 'package:vande_mission/screen/afterlogin/home/view/componet_screen.dart';
import 'package:vande_mission/screen/splash/splash_screen.dart';

// import 'package:vande_mission/widgets/initial_loader.dart';
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
      // home: PostDetailScreen(),
      // home: PostDetailScreen(),
      // home: BussinessDetailScreen(),
      // home: DepartmentDetailScreen(),
      // home: VillageDetailScreen(),
      // home: ComponetsScreen(),
      // home: BookChapterIndexScreen(),
      // home: BookChapterDetailScreen(),
      // home: PaymentScreen(),
      // home: CollectionScreen(),
      // home: CollectionDetailScreen(),
      // home: MemberFamilyScreen(),
      // home: MemberSkillScreen(),
      // home: GroupDetailScreen(),
    );
  }
}
