// To parse this JSON data, do
//
//     final authorStoreModel = authorStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/book.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

AuthorStoreModel authorStoreModelFromJson(String? str) => AuthorStoreModel.fromJson(json.decode(str!));

String? authorStoreModelToJson(AuthorStoreModel data) => json.encode(data.toJson());

class AuthorStoreModel {
  AuthorStoreModel({
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

  factory AuthorStoreModel.fromJson(Map<String, dynamic> json) => AuthorStoreModel(
        id: json["id"],
        name: json["name"],
        photo: json["photo"],
        description: json["description"],
        book: Book.fromJson(json["book"]),
        member: Member.fromJson(json["member"]),
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
