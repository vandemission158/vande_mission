// To parse this JSON data, do
//
//     final blogCommentLikeModel = blogCommentLikeModelFromJson(jsonString);

import 'dart:convert';

BlogCommentLikeModel blogCommentLikeModelFromJson(String str) => BlogCommentLikeModel.fromJson(json.decode(str));

String blogCommentLikeModelToJson(BlogCommentLikeModel data) => json.encode(data.toJson());

class BlogCommentLikeModel {
  BlogCommentLikeModel({
    this.id,
    this.totalLike,
  });

  int? id;
  int? totalLike;

  factory BlogCommentLikeModel.fromJson(Map<String, dynamic> json) => BlogCommentLikeModel(
        id: json["id"],
        totalLike: json["total_like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total_like": totalLike,
      };
}
