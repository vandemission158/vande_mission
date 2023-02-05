// To parse this JSON data, do
//
//     final productDeleteModel = productDeleteModelFromJson(jsonString);

import 'dart:convert';

ProductDeleteModel productDeleteModelFromJson(String str) => ProductDeleteModel.fromJson(json.decode(str));

String productDeleteModelToJson(ProductDeleteModel data) => json.encode(data.toJson());

class ProductDeleteModel {
  ProductDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory ProductDeleteModel.fromJson(Map<String, dynamic> json) => ProductDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
