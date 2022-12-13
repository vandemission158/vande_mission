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
    this.type,
    this.storageUrl,
    this.isTotalGroupMember,
  });

  int? id;
  String? name;
  String? type;
  String? storageUrl;
  int? isTotalGroupMember;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
      };
}
