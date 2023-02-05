// To parse this JSON data, do
//
//     final postCommentReplyDeleteModel = postCommentReplyDeleteModelFromJson(jsonString);

import 'dart:convert';

PostCommentReplyDeleteModel postCommentReplyDeleteModelFromJson(String str) => PostCommentReplyDeleteModel.fromJson(json.decode(str));

String postCommentReplyDeleteModelToJson(PostCommentReplyDeleteModel data) => json.encode(data.toJson());

class PostCommentReplyDeleteModel {
  PostCommentReplyDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory PostCommentReplyDeleteModel.fromJson(Map<String, dynamic> json) => PostCommentReplyDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
