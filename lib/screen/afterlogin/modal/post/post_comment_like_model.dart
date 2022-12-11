// To parse this JSON data, do
//
//     final postCommentLikeModel = postCommentLikeModelFromJson(jsonString);

import 'dart:convert';

PostCommentLikeModel postCommentLikeModelFromJson(String str) => PostCommentLikeModel.fromJson(json.decode(str));

String postCommentLikeModelToJson(PostCommentLikeModel data) => json.encode(data.toJson());

class PostCommentLikeModel {
  PostCommentLikeModel({
    this.id,
    this.totalLike,
  });

  int? id;
  int? totalLike;

  factory PostCommentLikeModel.fromJson(Map<String, dynamic> json) => PostCommentLikeModel(
        id: json["id"],
        totalLike: json["total_like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total_like": totalLike,
      };
}
