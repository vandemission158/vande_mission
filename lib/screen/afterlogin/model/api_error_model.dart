// To parse this JSON data, do
//
//     final apiErrorModel = apiErrorModelFromJson(jsonString);

import 'dart:convert';

ApiErrorModel apiErrorModelFromJson(String str) => ApiErrorModel.fromJson(json.decode(str));

String apiErrorModelToJson(ApiErrorModel data) => json.encode(data.toJson());

class ApiErrorModel {
  ApiErrorModel({
    this.message,
    this.errors,
  });

  String? message;
  Errors? errors;

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => ApiErrorModel(
        message: json["message"],
        errors: Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "errors": errors!.toJson(),
      };
}

class Errors {
  Errors();

  factory Errors.fromJson(Map<String, dynamic> json) => Errors();

  Map<String, dynamic> toJson() => {};
}
