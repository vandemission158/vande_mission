// To parse this JSON data, do
//
//     final bookDeleteModel = bookDeleteModelFromJson(jsonString);

import 'dart:convert';

BookDeleteModel bookDeleteModelFromJson(String str) => BookDeleteModel.fromJson(json.decode(str));

String bookDeleteModelToJson(BookDeleteModel data) => json.encode(data.toJson());

class BookDeleteModel {
  BookDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BookDeleteModel.fromJson(Map<String, dynamic> json) => BookDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
