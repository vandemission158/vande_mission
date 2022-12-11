// To parse this JSON data, do
//
//     final group = groupFromJson(jsonString);

import 'dart:convert';

Group groupFromJson(String? str) => Group.fromJson(json.decode(str!));

String groupToJson(Group data) => json.encode(data.toJson());

class Group {
  Group({
    this.id,
    this.name,
    this.storageUrl,
    this.isTotalGroupMember,
  });

  int? id;
  String? name;
  String? storageUrl;
  int? isTotalGroupMember;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        name: json["name"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
      };
}
