// To parse this JSON data, do
//
//     final eventInterestStoreModel = eventInterestStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/event/event.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

EventInterestStoreModel eventInterestStoreModelFromJson(String? str) => EventInterestStoreModel.fromJson(json.decode(str!));

String? eventInterestStoreModelToJson(EventInterestStoreModel data) => json.encode(data.toJson());

class EventInterestStoreModel {
  EventInterestStoreModel({
    this.id,
    this.isAttend,
    this.createdAt,
    this.updatedAt,
    this.event,
    this.member,
  });

  int? id;
  int? isAttend;
  String? createdAt;
  String? updatedAt;
  Event? event;
  Member? member;

  factory EventInterestStoreModel.fromJson(Map<String, dynamic> json) => EventInterestStoreModel(
        id: json["id"],
        isAttend: json["is_attend"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        event: Event.fromJson(json["event"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_attend": isAttend,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "event": event!.toJson(),
        "member": member?.toJson(),
      };
}
