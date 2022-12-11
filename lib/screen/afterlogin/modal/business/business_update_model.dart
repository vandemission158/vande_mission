// To parse this JSON data, do
//
//     final businessStoreModel = businessStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BusinessUpdateModel businessStoreModelFromJson(String? str) => BusinessUpdateModel.fromJson(json.decode(str!));

String? businessStoreModelToJson(BusinessUpdateModel data) => json.encode(data.toJson());

class BusinessUpdateModel {
  BusinessUpdateModel({
    this.id,
    this.type,
    this.logo,
    this.name,
    this.area,
    this.pincode,
    this.location,
    this.latitude,
    this.longitude,
    this.experience,
    this.description,
    this.socialLink,
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
  String? type;
  String? logo;
  String? name;
  dynamic area;
  String? pincode;
  dynamic location;
  dynamic latitude;
  dynamic longitude;
  String? experience;
  dynamic description;
  dynamic socialLink;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;
  Village? village;
  Society? society;

  factory BusinessUpdateModel.fromJson(Map<String, dynamic> json) => BusinessUpdateModel(
        id: json["id"],
        type: json["type"],
        logo: json["logo"] == null ? null : json["logo"],
        name: json["name"],
        area: json["area"],
        pincode: json["pincode"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        experience: json["experience"],
        description: json["description"],
        socialLink: json["social_link"],
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
        "type": type,
        "logo": logo == null ? null : logo,
        "name": name,
        "area": area,
        "pincode": pincode,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "experience": experience,
        "description": description,
        "social_link": socialLink,
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
