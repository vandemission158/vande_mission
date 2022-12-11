// To parse this JSON data, do
//
//     final blogCommentStoreModel = blogCommentStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BlogCommentStoreModel blogCommentStoreModelFromJson(String? str) => BlogCommentStoreModel.fromJson(json.decode(str!));

String? blogCommentStoreModelToJson(BlogCommentStoreModel data) => json.encode(data.toJson());

class BlogCommentStoreModel {
  BlogCommentStoreModel({
    this.id,
    this.text,
    this.createdAt,
    this.updatedAt,
    this.totalLike,
    this.blogCommentReply,
    this.member,
  });

  int? id;
  String? text;
  String? createdAt;
  String? updatedAt;
  int? totalLike;
  List<dynamic>? blogCommentReply;
  Member? member;

  factory BlogCommentStoreModel.fromJson(Map<String, dynamic> json) => BlogCommentStoreModel(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        totalLike: json["total_like"],
        blogCommentReply: List<dynamic>.from(json["blog_comment_reply"].map((x) => x)),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "total_like": totalLike,
        "blog_comment_reply": List<dynamic>.from(blogCommentReply!.map((x) => x)),
        "member": member!.toJson(),
      };
}
