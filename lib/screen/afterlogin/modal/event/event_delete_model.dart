// To parse this JSON data, do
//
//     final eventDeleteModel = eventDeleteModelFromJson(jsonString);

import 'dart:convert';

EventDeleteModel eventDeleteModelFromJson(String str) => EventDeleteModel.fromJson(json.decode(str));

String eventDeleteModelToJson(EventDeleteModel data) => json.encode(data.toJson());

class EventDeleteModel {
  EventDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory EventDeleteModel.fromJson(Map<String, dynamic> json) => EventDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
