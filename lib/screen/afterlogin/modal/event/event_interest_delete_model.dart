// To parse this JSON data, do
//
//     final eventInterestDeleteModel = eventInterestDeleteModelFromJson(jsonString);

import 'dart:convert';

EventInterestDeleteModel eventInterestDeleteModelFromJson(String str) =>
    EventInterestDeleteModel.fromJson(json.decode(str));

String eventInterestDeleteModelToJson(EventInterestDeleteModel data) =>
    json.encode(data.toJson());

class EventInterestDeleteModel {
  EventInterestDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory EventInterestDeleteModel.fromJson(Map<String, dynamic> json) =>
      EventInterestDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
