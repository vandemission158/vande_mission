// To parse this JSON data, do
//
//     final offerDeleteModel = offerDeleteModelFromJson(jsonString);

import 'dart:convert';

OfferDeleteModel offerDeleteModelFromJson(String str) =>
    OfferDeleteModel.fromJson(json.decode(str));

String offerDeleteModelToJson(OfferDeleteModel data) =>
    json.encode(data.toJson());

class OfferDeleteModel {
  OfferDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory OfferDeleteModel.fromJson(Map<String, dynamic> json) =>
      OfferDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
