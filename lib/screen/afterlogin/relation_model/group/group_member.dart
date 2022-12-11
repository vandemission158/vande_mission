// To parse this JSON data, do
//
//     final groupmember = groupmemberFromJson(jsonString);

import 'dart:convert';

Groupmember groupmemberFromJson(String? str) => Groupmember.fromJson(json.decode(str!));

String groupmemberToJson(Groupmember data) => json.encode(data.toJson());

class Groupmember {
  Groupmember({
    this.id,
    this.isRequest,
  });

  int? id;
  String? isRequest;

  factory Groupmember.fromJson(Map<String, dynamic> json) => Groupmember(
        id: json["id"],
        isRequest: json["is_request"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_request": isRequest,
      };
}
