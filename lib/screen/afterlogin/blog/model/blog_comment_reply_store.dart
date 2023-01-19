// To parse this JSON data, do
//
//     final blogCommentReplyStoreModel = blogCommentReplyStoreModelFromJson(jsonString? );

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BlogCommentReplyStoreModel blogCommentReplyStoreModelFromJson(String? str) => BlogCommentReplyStoreModel.fromJson(json.decode(str!));

String? blogCommentReplyStoreModelToJson(BlogCommentReplyStoreModel data) => json.encode(data.toJson());

class BlogCommentReplyStoreModel {
  BlogCommentReplyStoreModel({
    this.id,
    this.text,
    this.createdAt,
    this.totalLike,
    this.member,
  });

  int? id;
  String? text;
  String? createdAt;
  int? totalLike;
  Member? member;

  factory BlogCommentReplyStoreModel.fromJson(Map<String?, dynamic> json) => BlogCommentReplyStoreModel(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        totalLike: json["total_like"],
        member: Member.fromJson(json["member"]),
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "total_like": totalLike,
        "member": member!.toJson(),
      };
}
