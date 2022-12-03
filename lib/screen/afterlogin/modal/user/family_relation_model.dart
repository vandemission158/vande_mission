// To parse this JSON data, do
//
//     final familyRelationModel = familyRelationModelFromJson(jsonString);

import 'dart:convert';

FamilyRelationModel familyRelationModelFromJson(String? str) => FamilyRelationModel.fromJson(json.decode(str!));

String? familyRelationModelToJson(FamilyRelationModel data) => json.encode(data.toJson());

class FamilyRelationModel {
  FamilyRelationModel({
    this.id,
    this.isRequest,
    this.member,
    this.relation,
    this.createdby,
  });

  int? id;
  String? isRequest;
  Member? member;
  Relation? relation;
  Createdby? createdby;

  factory FamilyRelationModel.fromJson(Map<String, dynamic> json) => FamilyRelationModel(
        id: json["id"],
        isRequest: json["is_request"],
        member: Member.fromJson(json["member"]),
        relation: Relation.fromJson(json["relation"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_request": isRequest,
        "member": member!.toJson(),
        "relation": relation!.toJson(),
        "createdby": createdby!.toJson(),
      };
}

class Member {
  Member({
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

  factory Member.fromJson(Map<String, dynamic> json) => Member(
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

class Relation {
  Relation({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Relation.fromJson(Map<String, dynamic> json) => Relation(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
