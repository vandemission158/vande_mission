// To parse this JSON data, do
//
//     final postLikeModel = postLikeModelFromJson(jsonString);

import 'dart:convert';

PostLikeModel postLikeModelFromJson(String str) =>
    PostLikeModel.fromJson(json.decode(str));

String postLikeModelToJson(PostLikeModel data) => json.encode(data.toJson());

class PostLikeModel {
  PostLikeModel({
    this.id,
    this.storageUrl,
    this.totalLike,
    this.totalDislike,
  });

  int? id;
  String? storageUrl;
  int? totalLike;
  int? totalDislike;

  factory PostLikeModel.fromJson(Map<String, dynamic> json) => PostLikeModel(
        id: json["id"],
        storageUrl: json["storage_url"],
        totalLike: json["total_like"],
        totalDislike: json["total_dislike"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "storage_url": storageUrl,
        "total_like": totalLike,
        "total_dislike": totalDislike,
      };
}
