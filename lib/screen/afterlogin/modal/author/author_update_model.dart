// To parse this JSON data, do
//
//     final authorUpdateModel = authorUpdateModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/book.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

AuthorUpdateModel authorUpdateModelFromJson(String? str) => AuthorUpdateModel.fromJson(json.decode(str!));

String? authorUpdateModelToJson(AuthorUpdateModel data) => json.encode(data.toJson());

class AuthorUpdateModel {
  AuthorUpdateModel({
    this.id,
    this.name,
    this.photo,
    this.description,
    this.book,
    this.member,
  });

  int? id;
  dynamic name;
  dynamic photo;
  dynamic description;
  Book? book;
  Member? member;

  factory AuthorUpdateModel.fromJson(Map<String, dynamic> json) => AuthorUpdateModel(
        id: json["id"],
        name: json["name"],
        photo: json["photo"],
        description: json["description"],
        book: json["book"] == null ? null : Book.fromJson(json["book"]),
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "photo": photo,
        "description": description,
        "book": book!.toJson(),
        "member": member!.toJson(),
      };
}
