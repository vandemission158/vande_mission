// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

Book bookFromJson(String? str) => Book.fromJson(json.decode(str!));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
  Book({
    this.id,
    this.title,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
    this.isTotalIndex,
  });

  int? id;
  String? title;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;
  int? isTotalIndex;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        title: json["title"],
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
        isTotalIndex: json["isTotalIndex"] == null ? null : json["isTotalIndex"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
        "isTotalIndex": isTotalIndex == null ? null : isTotalIndex,
      };
}
