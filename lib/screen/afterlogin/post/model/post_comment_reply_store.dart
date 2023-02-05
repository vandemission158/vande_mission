// To parse this JSON data, do
//
//     final postCommentReplyStoreModel = postCommentReplyStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

PostCommentReplyStoreModel postCommentReplyStoreModelFromJson(String? str) => PostCommentReplyStoreModel.fromJson(json.decode(str!));

String? postCommentReplyStoreModelToJson(PostCommentReplyStoreModel data) => json.encode(data.toJson());

class PostCommentReplyStoreModel {
  PostCommentReplyStoreModel({
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

  factory PostCommentReplyStoreModel.fromJson(Map<String, dynamic> json) => PostCommentReplyStoreModel(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        totalLike: json["total_like"],
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "total_like": totalLike,
        "member": member!.toJson(),
      };
}
