// To parse this JSON data, do
//
//     final skillStoreModel = skillStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

SkillStoreModel skillStoreModelFromJson(String? str) => SkillStoreModel.fromJson(json.decode(str!));

String? skillStoreModelToJson(SkillStoreModel data) => json.encode(data.toJson());

class SkillStoreModel {
  SkillStoreModel({
    this.id,
    this.skill,
    this.description,
    this.createdby,
  });

  int? id;
  List<String>? skill;
  dynamic description;
  Createdby? createdby;

  factory SkillStoreModel.fromJson(Map<String, dynamic> json) => SkillStoreModel(
        id: json["id"],
        skill: List<String>.from(json["skill"].map((x) => x)),
        description: json["description"],
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "skill": List<dynamic>.from(skill!.map((x) => x)),
        "description": description,
        "createdby": createdby!.toJson(),
      };
}
