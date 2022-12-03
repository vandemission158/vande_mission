// To parse this JSON data, do
//
//     final blogDeleteModel = blogDeleteModelFromJson(jsonString);

import 'dart:convert';

BlogDeleteModel blogDeleteModelFromJson(String str) =>
    BlogDeleteModel.fromJson(json.decode(str));

String blogDeleteModelToJson(BlogDeleteModel data) =>
    json.encode(data.toJson());

class BlogDeleteModel {
  BlogDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BlogDeleteModel.fromJson(Map<String, dynamic> json) =>
      BlogDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
