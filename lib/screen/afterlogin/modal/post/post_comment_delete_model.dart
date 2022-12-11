// To parse this JSON data, do
//
//     final postCommentDeleteModel = postCommentDeleteModelFromJson(jsonString);

import 'dart:convert';

PostCommentDeleteModel postCommentDeleteModelFromJson(String str) => PostCommentDeleteModel.fromJson(json.decode(str));

String postCommentDeleteModelToJson(PostCommentDeleteModel data) => json.encode(data.toJson());

class PostCommentDeleteModel {
  PostCommentDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory PostCommentDeleteModel.fromJson(Map<String, dynamic> json) => PostCommentDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
