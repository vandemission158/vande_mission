// To parse this JSON data, do
//
//     final minister = ministerFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

Minister ministerFromJson(String? str) => Minister.fromJson(json.decode(str!));

String? ministerToJson(Minister data) => json.encode(data.toJson());

class Minister {
  Minister({
    this.id,
    this.ministerFullname,
    this.minister,
    this.member,
  });

  int? id;
  String? ministerFullname;
  String? minister;
  Member? member;

  factory Minister.fromJson(Map<String, dynamic> json) => Minister(
        id: json["id"],
        ministerFullname: json["minister_fullname"],
        minister: json["minister"],
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "minister_fullname": ministerFullname,
        "minister": minister,
        "member": member!.toJson(),
      };
}
