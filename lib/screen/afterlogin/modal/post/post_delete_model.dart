// To parse this JSON data, do
//
//     final postDeleteModel = postDeleteModelFromJson(jsonString);

import 'dart:convert';

PostDeleteModel postDeleteModelFromJson(String str) => PostDeleteModel.fromJson(json.decode(str));

String postDeleteModelToJson(PostDeleteModel data) => json.encode(data.toJson());

class PostDeleteModel {
  PostDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory PostDeleteModel.fromJson(Map<String, dynamic> json) => PostDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
