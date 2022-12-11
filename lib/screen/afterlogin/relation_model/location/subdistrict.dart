// To parse this JSON data, do
//
//     final subdistrict = subdistrictFromJson(jsonString);

import 'dart:convert';

Subdistrict subdistrictFromJson(String? str) => Subdistrict.fromJson(json.decode(str!));

String subdistrictToJson(Subdistrict data) => json.encode(data.toJson());

class Subdistrict {
  Subdistrict({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Subdistrict.fromJson(Map<String, dynamic> json) => Subdistrict(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
