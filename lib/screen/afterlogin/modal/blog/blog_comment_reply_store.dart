// To parse this JSON data, do
//
//     final blogCommentReplyStoreModel = blogCommentReplyStoreModelFromJson(jsonString? );

import 'dart:convert';

BlogCommentReplyStoreModel blogCommentReplyStoreModelFromJson(String? str) =>
    BlogCommentReplyStoreModel.fromJson(json.decode(str!));

String? blogCommentReplyStoreModelToJson(BlogCommentReplyStoreModel data) =>
    json.encode(data.toJson());

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

  factory BlogCommentReplyStoreModel.fromJson(Map<String?, dynamic> json) =>
      BlogCommentReplyStoreModel(
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

  factory Member.fromJson(Map<String?, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}
