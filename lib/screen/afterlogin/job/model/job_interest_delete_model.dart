// To parse this JSON data, do
//
//     final jobInterestDeleteModel = jobInterestDeleteModelFromJson(jsonString);

import 'dart:convert';

JobInterestDeleteModel jobInterestDeleteModelFromJson(String str) => JobInterestDeleteModel.fromJson(json.decode(str));

String jobInterestDeleteModelToJson(JobInterestDeleteModel data) => json.encode(data.toJson());

class JobInterestDeleteModel {
  JobInterestDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory JobInterestDeleteModel.fromJson(Map<String, dynamic> json) => JobInterestDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
