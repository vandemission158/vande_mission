import 'package:flutter/cupertino.dart';

String authorizationToken = "";

const nextPageURL = '';

const String baseUrl = "https://sand.vandemission.com/api/v1/";

const String stateAPI = "beforelogin/state";
const String countryAPI = "beforelogin/country";
const String districtAPI = "beforelogin/district";
const String villageAPI = "beforelogin/village";
const String societyAPI = "beforelogin/society";
const String addSocietyAPI = "beforelogin/society/store";
const String casteAPI = "beforelogin/caste";
const String addFamilyAPI = "beforelogin/family/store";
const String addFamilyMemberAPIKey = "beforelogin/member/store";
const String familyMemberAPI = "beforelogin/familymember";
const String addressListAPI = "beforelogin/address";


const int timout = 30000;
// const int countryID = 0;

class Constants {
  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;
}
