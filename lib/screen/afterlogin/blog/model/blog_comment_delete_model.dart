// To parse this JSON data, do
//
//     final blogCommentDeleteModel = blogCommentDeleteModelFromJson(jsonString);

import 'dart:convert';

BlogCommentDeleteModel blogCommentDeleteModelFromJson(String str) =>
    BlogCommentDeleteModel.fromJson(json.decode(str));

String blogCommentDeleteModelToJson(BlogCommentDeleteModel data) =>
    json.encode(data.toJson());

class BlogCommentDeleteModel {
  BlogCommentDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BlogCommentDeleteModel.fromJson(Map<String, dynamic> json) =>
      BlogCommentDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
