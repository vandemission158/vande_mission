// To parse this JSON data, do
//
//     final authorDeleteModel = authorDeleteModelFromJson(jsonString);

import 'dart:convert';

AuthorDeleteModel authorDeleteModelFromJson(String str) =>
    AuthorDeleteModel.fromJson(json.decode(str));

String authorDeleteModelToJson(AuthorDeleteModel data) =>
    json.encode(data.toJson());

class AuthorDeleteModel {
  AuthorDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory AuthorDeleteModel.fromJson(Map<String, dynamic> json) =>
      AuthorDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
