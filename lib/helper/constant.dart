import 'package:flutter/cupertino.dart';

const String authorizationToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDEyODFkM2YzNzY5MTRlYzYzYzA0NmNlNmY4MzRhZTllYzVjN2Q5MTZjNGY5NjAyMzFjYmFmNTRjNzBhMTkwNDczNGNhODYwOWJjYzU2MDIiLCJpYXQiOjE2NTk0NjIzMTguNDU3MTE0LCJuYmYiOjE2NTk0NjIzMTguNDU3MTE3LCJleHAiOjE2NzUzNTk5MTguNDQ4MDgxLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.EX5bWiFvkZcn4fIU7Hvkvqa4z1MbTx97MCs4Z4tdDnddlOwK4iXT1NrvfFitvBl3YHqV2hR3pZdfOlH-Tw2J25LA40Fs7D2y8nME8YtzdI2Vc9TJpPanqD8EO7giH898xKMxJuWCQtubQYvGVwXfzpP167ZEf2DuMx2jCBv_HuQjavArgZ3GKJzC6zdqHzuzqmgbrKt1kTWBxakXfrCZYxHJcgjqs4TwCPmzQxCHtsTye5afazPM04NdIYLy1POXbENDQa4X1ky025vLBl8V_ri78KSKY7OTJJJObz58hxY9yqyAk0jwihPCd_7GFfT9udP4kby2bU6IRkOi0QgzpS2H7OAbePGjSjokkAemBAXtinw_UdS5UWlz70fZ-8xhpVfbYtFAb8Tx8FE0jCBtY56UAH6te9uf6ZfkFBeBkdF23NPtTzSeHrw9sNWrT_ZSTR20CbMdlmS9jjO2pnBYr1mnWSsrkn9MiE1hBK9VfFo3N-IcfzJrYZ6h0y-PJofpsscRDW6b2E6-sXdwkzv6HxElPqcLrgA710vcDJx-eRyExs1Zs0AccSdP7mfwX6Y4UAzHdIgTpkxe8bIUMlTzwI-xOGllNIu-ZbT6Brv_HQhzE1xqkb5m_rL2gA8NuAAyF7sK3K-xUCtYE_Tccgzt4hCFExSDz7FhSwgATAcSjag";

const nextPageURL = '';
const authKey = "590449c6329bb5153e331ce35e8ec474fb3934590386c7fca45a2669b8ee3b94";

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
const String loginAPIKey = "beforelogin/login";
const String addGroupKey = "afterlogin/group/store";

const int timout = 30000;
// const int countryID = 0;

class Constants {
  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;
}
