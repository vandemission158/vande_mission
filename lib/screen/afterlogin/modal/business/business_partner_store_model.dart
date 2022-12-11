// To parse this JSON data, do
//
//     final businessPartnerStoreModel = businessPartnerStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/business/business.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BusinessPartnerStoreModel businessPartnerStoreModelFromJson(String? str) => BusinessPartnerStoreModel.fromJson(json.decode(str!));

String? businessPartnerStoreModelToJson(BusinessPartnerStoreModel data) => json.encode(data.toJson());

class BusinessPartnerStoreModel {
  BusinessPartnerStoreModel({
    this.id,
    this.business,
    this.member,
  });

  int? id;
  Business? business;
  Member? member;

  factory BusinessPartnerStoreModel.fromJson(Map<String, dynamic> json) => BusinessPartnerStoreModel(
        id: json["id"],
        business: Business.fromJson(json["business"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business": business!.toJson(),
        "member": member!.toJson(),
      };
}
