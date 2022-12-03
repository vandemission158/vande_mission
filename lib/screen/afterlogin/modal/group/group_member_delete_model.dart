// To parse this JSON data, do
//
//     final groupMemberDeleteModel = groupMemberDeleteModelFromJson(jsonString);

import 'dart:convert';

GroupMemberDeleteModel groupMemberDeleteModelFromJson(String str) =>
    GroupMemberDeleteModel.fromJson(json.decode(str));

String groupMemberDeleteModelToJson(GroupMemberDeleteModel data) =>
    json.encode(data.toJson());

class GroupMemberDeleteModel {
  GroupMemberDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory GroupMemberDeleteModel.fromJson(Map<String, dynamic> json) =>
      GroupMemberDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
