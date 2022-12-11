// To parse this JSON data, do
//
//     final jobDeleteModel = jobDeleteModelFromJson(jsonString);

import 'dart:convert';

JobDeleteModel jobDeleteModelFromJson(String str) => JobDeleteModel.fromJson(json.decode(str));

String jobDeleteModelToJson(JobDeleteModel data) => json.encode(data.toJson());

class JobDeleteModel {
  JobDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory JobDeleteModel.fromJson(Map<String, dynamic> json) => JobDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
