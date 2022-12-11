// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

Event eventFromJson(String? str) => Event.fromJson(json.decode(str!));

String eventToJson(Event data) => json.encode(data.toJson());

class Event {
  Event({
    this.id,
    this.title,
    this.datetype,
    this.startDatetime,
    this.endDatetime,
    this.location,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  String? datetype;
  DateTime? startDatetime;
  DateTime? endDatetime;
  String? location;
  Typeofcategory? typeofcategory;
  Member? createdby;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        title: json["title"],
        datetype: json["datetype"],
        startDatetime: DateTime.parse(json["start_datetime"]),
        endDatetime: DateTime.parse(json["end_datetime"]),
        location: json["location"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Member.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "datetype": datetype,
        "start_datetime": startDatetime!.toIso8601String(),
        "end_datetime": endDatetime!.toIso8601String(),
        "location": location,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
