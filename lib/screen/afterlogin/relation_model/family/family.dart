// To parse this JSON data, do
//
//     final family = familyFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

Family familyFromJson(String? str) => Family.fromJson(json.decode(str!));

String familyToJson(Family data) => json.encode(data.toJson());

class Family {
  Family({
    this.id,
    this.houseNumber,
    this.storageUrl,
    this.mainmember,
  });

  int? id;
  dynamic houseNumber;
  String? storageUrl;
  List<Member>? mainmember;

  factory Family.fromJson(Map<String, dynamic> json) => Family(
        id: json["id"],
        houseNumber: json["house_number"],
        storageUrl: json["storage_url"],
        mainmember: List<Member>.from(json["mainmember"].map((x) => Member.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "house_number": houseNumber,
        "storage_url": storageUrl,
        "mainmember": List<dynamic>.from(mainmember!.map((x) => x.toJson())),
      };
}
