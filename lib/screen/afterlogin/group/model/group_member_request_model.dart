// To parse this JSON data, do
//
//     final groupMemberRequestModel = groupMemberRequestModelFromJson(jsonString);

import 'dart:convert';

GroupMemberRequestModel groupMemberRequestModelFromJson(String? str) => GroupMemberRequestModel.fromJson(json.decode(str!));

String? groupMemberRequestModelToJson(GroupMemberRequestModel data) => json.encode(data.toJson());

class GroupMemberRequestModel {
  GroupMemberRequestModel({
    this.id,
    this.captain,
    this.wisecaptain,
    this.isRequest,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? captain;
  int? wisecaptain;
  String? isRequest;
  String? createdAt;
  String? updatedAt;

  factory GroupMemberRequestModel.fromJson(Map<String, dynamic> json) => GroupMemberRequestModel(
        id: json["id"],
        captain: json["captain"],
        wisecaptain: json["wisecaptain"],
        isRequest: json["is_request"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "captain": captain,
        "wisecaptain": wisecaptain,
        "is_request": isRequest,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
