// To parse this JSON data, do
//
//     final familyRelationStoreModel = familyRelationStoreModelFromJson(jsonString);

import 'dart:convert';

FamilyRelationStoreModel familyRelationStoreModelFromJson(String? str) =>
    FamilyRelationStoreModel.fromJson(json.decode(str!));

String? familyRelationStoreModelToJson(FamilyRelationStoreModel data) =>
    json.encode(data.toJson());

class FamilyRelationStoreModel {
  FamilyRelationStoreModel({
    this.id,
    this.isRequest,
    this.member,
    this.relation,
    this.createdby,
  });

  int? id;
  String? isRequest;
  Createdby? member;
  Relation? relation;
  Createdby? createdby;

  factory FamilyRelationStoreModel.fromJson(Map<String, dynamic> json) =>
      FamilyRelationStoreModel(
        id: json["id"],
        isRequest: json["is_request"],
        member: Createdby.fromJson(json["member"]),
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
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber == null ? null : phoneNumber,
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
