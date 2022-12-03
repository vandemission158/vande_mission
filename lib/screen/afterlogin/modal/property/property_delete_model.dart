// To parse this JSON data, do
//
//     final propertyDeleteModel = propertyDeleteModelFromJson(jsonString);

import 'dart:convert';

PropertyDeleteModel propertyDeleteModelFromJson(String str) => PropertyDeleteModel.fromJson(json.decode(str));

String propertyDeleteModelToJson(PropertyDeleteModel data) => json.encode(data.toJson());

class PropertyDeleteModel {
  PropertyDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory PropertyDeleteModel.fromJson(Map<String, dynamic> json) => PropertyDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
