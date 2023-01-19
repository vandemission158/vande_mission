// To parse this JSON data, do
//
//     final blogLikeModel = blogLikeModelFromJson(jsonString);

import 'dart:convert';

BlogLikeModel blogLikeModelFromJson(String str) => BlogLikeModel.fromJson(json.decode(str));

String blogLikeModelToJson(BlogLikeModel data) => json.encode(data.toJson());

class BlogLikeModel {
  BlogLikeModel({
    this.id,
    this.storageUrl,
    this.totalLike,
    this.totalDislike,
  });

  int? id;
  String? storageUrl;
  int? totalLike;
  int? totalDislike;

  factory BlogLikeModel.fromJson(Map<String, dynamic> json) => BlogLikeModel(
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
