// To parse this JSON data, do
//
//     final blogCommentReplyDeleteModel = blogCommentReplyDeleteModelFromJson(jsonString);

import 'dart:convert';

BlogCommentReplyDeleteModel blogCommentReplyDeleteModelFromJson(String str) => BlogCommentReplyDeleteModel.fromJson(json.decode(str));

String blogCommentReplyDeleteModelToJson(BlogCommentReplyDeleteModel data) => json.encode(data.toJson());

class BlogCommentReplyDeleteModel {
  BlogCommentReplyDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BlogCommentReplyDeleteModel.fromJson(Map<String, dynamic> json) => BlogCommentReplyDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
