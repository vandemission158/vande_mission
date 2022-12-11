// To parse this JSON data, do
//
//     final business = businessFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

Business businessFromJson(String? str) => Business.fromJson(json.decode(str!));

String businessToJson(Business data) => json.encode(data.toJson());

class Business {
  Business({
    this.id,
    this.name,
    this.typeofcategory,
    this.createdby,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
  });

  int? id;
  String? name;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;
  Village? village;
  Society? society;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        id: json["id"],
        name: json["name"],
        typeofcategory: json["typeofcategory"] == null ? null : Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: json["createdby"] == null ? null : Createdby.fromJson(json["createdby"]),
        country: json["country"] == null ? null : Country.fromJson(json["country"]),
        state: json["state"] == null ? null : State.fromJson(json["state"]),
        district: json["district"] == null ? null : District.fromJson(json["district"]),
        subdistrict: json["subdistrict"] == null ? null : Subdistrict.fromJson(json["subdistrict"]),
        village: json["village"] == null ? null : Village.fromJson(json["village"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
      };
}
