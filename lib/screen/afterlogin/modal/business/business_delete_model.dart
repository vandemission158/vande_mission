// To parse this JSON data, do
//
//     final businessDeleteModel = businessDeleteModelFromJson(jsonString);

import 'dart:convert';

BusinessDeleteModel businessDeleteModelFromJson(String str) =>
    BusinessDeleteModel.fromJson(json.decode(str));

String businessDeleteModelToJson(BusinessDeleteModel data) =>
    json.encode(data.toJson());

class BusinessDeleteModel {
  BusinessDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BusinessDeleteModel.fromJson(Map<String, dynamic> json) =>
      BusinessDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
