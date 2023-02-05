// To parse this JSON data, do
//
//     final postCommentReplyLikeModel = postCommentReplyLikeModelFromJson(jsonString);

import 'dart:convert';

PostCommentReplyLikeModel postCommentReplyLikeModelFromJson(String str) => PostCommentReplyLikeModel.fromJson(json.decode(str));

String postCommentReplyLikeModelToJson(PostCommentReplyLikeModel data) => json.encode(data.toJson());

class PostCommentReplyLikeModel {
  PostCommentReplyLikeModel({
    this.id,
    this.totalLike,
  });

  int? id;
  int? totalLike;

  factory PostCommentReplyLikeModel.fromJson(Map<String, dynamic> json) => PostCommentReplyLikeModel(
        id: json["id"],
        totalLike: json["total_like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total_like": totalLike,
      };
}
