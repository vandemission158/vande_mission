// To parse this JSON data, do
//
//     final skillStoreModel = skillStoreModelFromJson(jsonString);

import 'dart:convert';

SkillStoreModel skillStoreModelFromJson(String? str) =>
    SkillStoreModel.fromJson(json.decode(str!));

String? skillStoreModelToJson(SkillStoreModel data) =>
    json.encode(data.toJson());

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

  factory SkillStoreModel.fromJson(Map<String, dynamic> json) =>
      SkillStoreModel(
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

class Createdby {
  Createdby({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? phoneNumber;
  String? storageUrl;

  factory Createdby.fromJson(Map<String, dynamic> json) => Createdby(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}
