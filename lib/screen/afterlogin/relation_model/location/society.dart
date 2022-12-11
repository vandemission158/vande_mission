// To parse this JSON data, do
//
//     final society = societyFromJson(jsonString);

import 'dart:convert';

Society societyFromJson(String? str) => Society.fromJson(json.decode(str!));

String societyToJson(Society data) => json.encode(data.toJson());

class Society {
  Society({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Society.fromJson(Map<String, dynamic> json) => Society(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
