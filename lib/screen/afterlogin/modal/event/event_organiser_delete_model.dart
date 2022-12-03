// To parse this JSON data, do
//
//     final eventOrganiserDeleteModel = eventOrganiserDeleteModelFromJson(jsonString);

import 'dart:convert';

EventOrganiserDeleteModel eventOrganiserDeleteModelFromJson(String str) =>
    EventOrganiserDeleteModel.fromJson(json.decode(str));

String eventOrganiserDeleteModelToJson(EventOrganiserDeleteModel data) =>
    json.encode(data.toJson());

class EventOrganiserDeleteModel {
  EventOrganiserDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory EventOrganiserDeleteModel.fromJson(Map<String, dynamic> json) =>
      EventOrganiserDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
