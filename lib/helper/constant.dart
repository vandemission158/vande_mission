import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';

const nextPageURL = '';

const String baseUrl = "https://sand.vandemission.com/api/v1/";

// const String afterBeforeLogin = authKey ? "afterlogin/" : "beforelogin";
const String afterLoginCountryAPI = "afterlogin/country";
const String beforeLoginCountryAPI = "beforelogin/country";
const String afterLoginStateAPI = "beforelogin/state";
const String befooreLoginStateAPI = "beforelogin/state";
const String afterLoginDistrictAPI = "afterlogin/district";
const String beforeLoginDistrictAPI = "beforelogin/district";

const String afterLoginVillageAPI = "afterlogin/village";
const String befooreLoginVillageAPI = "beforelogin/village";
const String afterLoginSocietyAPI = "afterlogin/society";
const String befooreLoginSocietyAPI = "beforelogin/society";
const String addSocietyAPI = "beforelogin/society/store";
const String casteAPI = "beforelogin/caste";
const String addFamilyAPI = "beforelogin/family/store";
const String addFamilyMemberAPIKey = "beforelogin/member/store";
const String familyMemberAPI = "beforelogin/familymember";
const String addressListAPI = "beforelogin/address";
const String loginAPIKey = "beforelogin/login";
const String addGroupKey = "afterlogin/group/store";
const String logoutKey = "afterlogin/logout";


const int timout = 30000;
// const int countryID = 0;

//API token
String authorizationToken = "";
String authorizationKey = "";
String id = "";

//Hive DB
const String dbName = "vandemission";
const String authToken = "token";
const String authKey = "key";
const String userId = 'id';
const String isLoginHive = "is_login";

class Constants {
  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;

  static Future setHive(String key, dynamic value) async {
    var box = await Hive.openBox(dbName);
    await box.put(key, value);
  }

  static Future getHive(String key) async {
    var box = await Hive.openBox(dbName);
    var hive = await box.get(key);
    return hive;
  }

  static void logout() async {
    //cleared hive db
    Hive.box(dbName).clear();
    Get.deleteAll(force: true);
    Get.offAll(() => const LoginScreen());
    print("data clear:---"+ await getHive(authKey));
  }
}
