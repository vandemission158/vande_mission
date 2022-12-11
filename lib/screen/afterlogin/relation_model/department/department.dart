// To parse this JSON data, do
//
//     final department = departmentFromJson(jsonString);

import 'dart:convert';

Department departmentFromJson(String? str) => Department.fromJson(json.decode(str!));

String departmentToJson(Department data) => json.encode(data.toJson());

class Department {
  Department({
    this.id,
    this.name,
    this.parent,
  });

  int? id;
  String? name;
  String? parent;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["id"],
        name: json["name"],
        parent: json["parent"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent": parent,
      };
}
