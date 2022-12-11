// To parse this JSON data, do
//
//     final groupMemberStoreModel = groupMemberStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/group/group.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

List<GroupMemberStoreModel> groupMemberStoreModelFromJson(String? str) => List<GroupMemberStoreModel>.from(json.decode(str!).map((x) => GroupMemberStoreModel.fromJson(x)));

String? groupMemberStoreModelToJson(List<GroupMemberStoreModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GroupMemberStoreModel {
  GroupMemberStoreModel({
    this.id,
    this.captain,
    this.wisecaptain,
    this.isRequest,
    this.createdAt,
    this.updatedAt,
    this.group,
    this.member,
  });

  int? id;
  int? captain;
  int? wisecaptain;
  String? isRequest;
  String? createdAt;
  String? updatedAt;
  Group? group;
  Member? member;

  factory GroupMemberStoreModel.fromJson(Map<String, dynamic> json) => GroupMemberStoreModel(
        id: json["id"],
        captain: json["captain"],
        wisecaptain: json["wisecaptain"],
        isRequest: json["is_request"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        group: Group.fromJson(json["group"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "captain": captain,
        "wisecaptain": wisecaptain,
        "is_request": isRequest,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "group": group!.toJson(),
        "member": member!.toJson(),
      };
}
