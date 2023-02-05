// To parse this JSON data, do
//
//     final postCommentStoreModel = postCommentStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

PostCommentStoreModel postCommentStoreModelFromJson(String? str) => PostCommentStoreModel.fromJson(json.decode(str!));

String? postCommentStoreModelToJson(PostCommentStoreModel data) => json.encode(data.toJson());

class PostCommentStoreModel {
  PostCommentStoreModel({
    this.id,
    this.text,
    this.createdAt,
    this.totalLike,
    this.postCommentReply,
    this.member,
  });

  int? id;
  String? text;
  String? createdAt;
  int? totalLike;
  List<dynamic>? postCommentReply;
  Member? member;

  factory PostCommentStoreModel.fromJson(Map<String, dynamic> json) => PostCommentStoreModel(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        totalLike: json["total_like"],
        postCommentReply: List<dynamic>.from(json["post_comment_reply"].map((x) => x)),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "total_like": totalLike,
        "post_comment_reply": List<dynamic>.from(postCommentReply!.map((x) => x)),
        "member": member!.toJson(),
      };
}
