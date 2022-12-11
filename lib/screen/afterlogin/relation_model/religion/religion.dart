// To parse this JSON data, do
//
//     final religion = religionFromJson(jsonString);

import 'dart:convert';

Religion religionFromJson(String? str) => Religion.fromJson(json.decode(str!));

String religionToJson(Religion data) => json.encode(data.toJson());

class Religion {
  Religion({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Religion.fromJson(Map<String, dynamic> json) => Religion(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
