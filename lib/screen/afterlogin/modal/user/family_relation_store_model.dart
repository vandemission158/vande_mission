// To parse this JSON data, do
//
//     final familyRelationStoreModel = familyRelationStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

FamilyRelationStoreModel familyRelationStoreModelFromJson(String? str) => FamilyRelationStoreModel.fromJson(json.decode(str!));

String? familyRelationStoreModelToJson(FamilyRelationStoreModel data) => json.encode(data.toJson());

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
  Member? member;
  Relation? relation;
  Createdby? createdby;

  factory FamilyRelationStoreModel.fromJson(Map<String, dynamic> json) => FamilyRelationStoreModel(
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
