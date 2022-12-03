// To parse this JSON data, do
//
//     final authorUpdateModel = authorUpdateModelFromJson(jsonString);

import 'dart:convert';

AuthorUpdateModel authorUpdateModelFromJson(String? str) =>
    AuthorUpdateModel.fromJson(json.decode(str!));

String? authorUpdateModelToJson(AuthorUpdateModel data) =>
    json.encode(data.toJson());

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

  factory AuthorUpdateModel.fromJson(Map<String, dynamic> json) =>
      AuthorUpdateModel(
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

class Book {
  Book({
    this.id,
    this.title,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
  });

  int? id;
  String? title;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        title: json["title"],
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
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
