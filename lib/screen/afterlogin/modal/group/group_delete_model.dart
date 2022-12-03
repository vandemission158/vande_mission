// To parse this JSON data, do
//
//     final groupDeleteModel = groupDeleteModelFromJson(jsonString);

import 'dart:convert';

GroupDeleteModel groupDeleteModelFromJson(String str) =>
    GroupDeleteModel.fromJson(json.decode(str));

String groupDeleteModelToJson(GroupDeleteModel data) =>
    json.encode(data.toJson());

class GroupDeleteModel {
  GroupDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory GroupDeleteModel.fromJson(Map<String, dynamic> json) =>
      GroupDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
