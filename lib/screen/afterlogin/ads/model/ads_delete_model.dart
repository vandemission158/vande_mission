// To parse this JSON data, do
//
//     final adsDeleteModel = adsDeleteModelFromJson(jsonString);

import 'dart:convert';

AdsDeleteModel adsDeleteModelFromJson(String str) =>
    AdsDeleteModel.fromJson(json.decode(str));

String adsDeleteModelToJson(AdsDeleteModel data) => json.encode(data.toJson());

class AdsDeleteModel {
  AdsDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory AdsDeleteModel.fromJson(Map<String, dynamic> json) => AdsDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
