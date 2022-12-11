// To parse this JSON data, do
//
//     final panchayat = panchayatFromJson(jsonString);

import 'dart:convert';

Panchayat panchayatFromJson(String? str) => Panchayat.fromJson(json.decode(str!));

String panchayatToJson(Panchayat data) => json.encode(data.toJson());

class Panchayat {
  Panchayat({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Panchayat.fromJson(Map<String, dynamic> json) => Panchayat(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
