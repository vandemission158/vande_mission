// To parse this JSON data, do
//
//     final village = villageFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';

Village villageFromJson(String? str) => Village.fromJson(json.decode(str!));

String villageToJson(Village data) => json.encode(data.toJson());

class Village {
  Village({
    this.id,
    this.name,
    this.totalsociety,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
  });

  int? id;
  String? name;
  int? totalsociety;
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
        country: Country.fromJson(json["country"]),
        state: State.fromJson(json["state"]),
        district: District.fromJson(json["district"]),
        subdistrict: Subdistrict.fromJson(json["subdistrict"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
      };
}
