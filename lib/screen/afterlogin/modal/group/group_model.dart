// To parse this JSON data, do
//
//     final groupModel = groupModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/group/group_member.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

GroupModel groupModelFromJson(String? str) => GroupModel.fromJson(json.decode(str!));

String? groupModelToJson(GroupModel data) => json.encode(data.toJson());

class GroupModel {
  GroupModel({
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
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
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
    this.division,
    this.name,
    this.photo,
    this.about,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.isTotalGroupMember,
    this.typeofcategory,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.createdby,
    this.groupmember,
  });

  int? id;
  String? division;
  String? name;
  String? photo;
  String? about;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  int? isTotalGroupMember;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;
  Village? village;
  Society? society;
  List<Groupmember>? groupmember;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        division: json["division"],
        name: json["name"],
        photo: json["photo"] == null ? null : json["photo"],
        about: json["about"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
        typeofcategory: json["typeofcategory"] == null ? null : Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: json["createdby"] == null ? null : Createdby.fromJson(json["createdby"]),
        country: json["country"] == null ? null : Country.fromJson(json["country"]),
        state: json["state"] == null ? null : State.fromJson(json["state"]),
        district: json["district"] == null ? null : District.fromJson(json["district"]),
        subdistrict: json["subdistrict"] == null ? null : Subdistrict.fromJson(json["subdistrict"]),
        village: json["village"] == null ? null : Village.fromJson(json["village"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
        groupmember: List<Groupmember>.from(json["groupmember"].map((x) => Groupmember.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "division": division,
        "name": name,
        "photo": photo == null ? null : photo,
        "about": about,
        "type": type,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
        "typeofcategory": typeofcategory == null ? null : typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "groupmember": List<dynamic>.from(groupmember!.map((x) => x.toJson())),
      };
}
