// To parse this JSON data, do
//
//     final productInterestDeleteModel = productInterestDeleteModelFromJson(jsonString);

import 'dart:convert';

ProductInterestDeleteModel productInterestDeleteModelFromJson(String str) =>
    ProductInterestDeleteModel.fromJson(json.decode(str));

String productInterestDeleteModelToJson(ProductInterestDeleteModel data) =>
    json.encode(data.toJson());

class ProductInterestDeleteModel {
  ProductInterestDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory ProductInterestDeleteModel.fromJson(Map<String, dynamic> json) =>
      ProductInterestDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
