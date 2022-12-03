// To parse this JSON data, do
//
//     final bankDetailDelete = bankDetailDeleteFromJson(jsonString);

import 'dart:convert';

BankDetailDeleteModel bankDetailDeleteFromJson(String str) =>
    BankDetailDeleteModel.fromJson(json.decode(str));

String bankDetailDeleteToJson(BankDetailDeleteModel data) =>
    json.encode(data.toJson());

class BankDetailDeleteModel {
  BankDetailDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BankDetailDeleteModel.fromJson(Map<String, dynamic> json) =>
      BankDetailDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
