// To parse this JSON data, do
//
//     final postCommentStoreModel = postCommentStoreModelFromJson(jsonString);

import 'dart:convert';

PostCommentStoreModel postCommentStoreModelFromJson(String? str) =>
    PostCommentStoreModel.fromJson(json.decode(str!));

String? postCommentStoreModelToJson(PostCommentStoreModel data) =>
    json.encode(data.toJson());

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

  factory PostCommentStoreModel.fromJson(Map<String, dynamic> json) =>
      PostCommentStoreModel(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        totalLike: json["total_like"],
        postCommentReply:
            List<dynamic>.from(json["post_comment_reply"].map((x) => x)),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "total_like": totalLike,
        "post_comment_reply":
            List<dynamic>.from(postCommentReply!.map((x) => x)),
        "member": member!.toJson(),
      };
}

class Member {
  Member({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? phoneNumber;
  String? storageUrl;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}
