// To parse this JSON data, do
//
//     final familyModel = familyModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/owner.dart';

FamilyModel familyModelFromJson(String? str) => FamilyModel.fromJson(json.decode(str!));

String? familyModelToJson(FamilyModel data) => json.encode(data.toJson());

class FamilyModel {
  FamilyModel({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory FamilyModel.fromJson(Map<String, dynamic> json) => FamilyModel(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
    this.id,
    this.addressType,
    this.area,
    this.pincode,
    this.isCurrentAddress,
    this.familyIdentityNumber,
    this.houseNumber,
    this.type,
    this.storageUrl,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.owner,
    this.otherAddress,
    this.mainmember,
  });

  int? id;
  String? addressType;
  String? area;
  String? pincode;
  int? isCurrentAddress;
  dynamic familyIdentityNumber;
  String? houseNumber;
  String? type;
  String? storageUrl;
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;
  Village? village;
  Society? society;
  Owner? owner;
  List<dynamic>? otherAddress;
  List<dynamic>? mainmember;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        addressType: json["address_type"],
        area: json["area"] == null ? null : json["area"],
        pincode: json["pincode"],
        isCurrentAddress: json["is_current_address"],
        familyIdentityNumber: json["family_identity_number"],
        houseNumber: json["house_number"] == null ? null : json["house_number"],
        type: json["type"],
        storageUrl: json["storage_url"],
        country: json["country"] == null ? null : Country.fromJson(json["country"]),
        state: json["state"] == null ? null : State.fromJson(json["state"]),
        district: json["district"] == null ? null : District.fromJson(json["district"]),
        subdistrict: json["subdistrict"] == null ? null : Subdistrict.fromJson(json["subdistrict"]),
        village: json["village"] == null ? null : Village.fromJson(json["village"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        otherAddress: List<dynamic>.from(json["other_address"].map((x) => x)),
        mainmember: List<dynamic>.from(json["mainmember"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address_type": addressType,
        "area": area == null ? null : area,
        "pincode": pincode,
        "is_current_address": isCurrentAddress,
        "family_identity_number": familyIdentityNumber,
        "house_number": houseNumber == null ? null : houseNumber,
        "type": type,
        "storage_url": storageUrl,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society == null ? null : society!.toJson(),
        "owner": owner!.toJson(),
        "other_address": List<dynamic>.from(otherAddress!.map((x) => x)),
        "mainmember": List<dynamic>.from(mainmember!.map((x) => x)),
      };
}
