// To parse this JSON data, do
//
//     final village = villageFromJson(jsonString);

import 'dart:convert';

Village villageFromJson(String? str) => Village.fromJson(json.decode(str!));

String villageToJson(Village data) => json.encode(data.toJson());

class Village {
  Village({
    this.id,
    this.name,
    this.totalsociety,
  });

  int? id;
  String? name;
  int? totalsociety;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
      };
}
