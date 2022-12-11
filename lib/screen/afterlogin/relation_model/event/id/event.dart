// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

Event eventFromJson(String? str) => Event.fromJson(json.decode(str!));

String eventToJson(Event data) => json.encode(data.toJson());

class Event {
  Event({
    this.id,
  });

  int? id;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
