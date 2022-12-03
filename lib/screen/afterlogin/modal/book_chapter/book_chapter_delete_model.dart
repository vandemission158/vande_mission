// To parse this JSON data, do
//
//     final bookChapterDeleteModel = bookChapterDeleteModelFromJson(jsonString);

import 'dart:convert';

BookChapterDeleteModel bookChapterDeleteModelFromJson(String str) =>
    BookChapterDeleteModel.fromJson(json.decode(str));

String bookChapterDeleteModelToJson(BookChapterDeleteModel data) =>
    json.encode(data.toJson());

class BookChapterDeleteModel {
  BookChapterDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BookChapterDeleteModel.fromJson(Map<String, dynamic> json) =>
      BookChapterDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
