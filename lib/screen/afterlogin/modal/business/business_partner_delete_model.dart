// To parse this JSON data, do
//
//     final businessPartnerDeleteModel = businessPartnerDeleteModelFromJson(jsonString);

import 'dart:convert';

BusinessPartnerDeleteModel businessPartnerDeleteModelFromJson(String str) => BusinessPartnerDeleteModel.fromJson(json.decode(str));

String businessPartnerDeleteModelToJson(BusinessPartnerDeleteModel data) => json.encode(data.toJson());

class BusinessPartnerDeleteModel {
  BusinessPartnerDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BusinessPartnerDeleteModel.fromJson(Map<String, dynamic> json) => BusinessPartnerDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
