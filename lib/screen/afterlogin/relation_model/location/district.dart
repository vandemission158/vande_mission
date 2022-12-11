// To parse this JSON data, do
//
//     final districtModel = districtModelFromJson(jsonString);

import 'dart:convert';

District districtFromJson(String? str) => District.fromJson(json.decode(str!));

String districtToJson(District data) => json.encode(data.toJson());

class District {
  District({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory District.fromJson(Map<String, dynamic> json) => District(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
