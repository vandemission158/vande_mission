// To parse this JSON data, do
//
//     final blogCommentReplyLikeModel = blogCommentReplyLikeModelFromJson(jsonString);

import 'dart:convert';

BlogCommentReplyLikeModel blogCommentReplyLikeModelFromJson(String str) =>
    BlogCommentReplyLikeModel.fromJson(json.decode(str));

String blogCommentReplyLikeModelToJson(BlogCommentReplyLikeModel data) =>
    json.encode(data.toJson());

class BlogCommentReplyLikeModel {
  BlogCommentReplyLikeModel({
    this.id,
    this.totalLike,
  });

  int? id;
  int? totalLike;

  factory BlogCommentReplyLikeModel.fromJson(Map<String, dynamic> json) =>
      BlogCommentReplyLikeModel(
        id: json["id"],
        totalLike: json["total_like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total_like": totalLike,
      };
}
