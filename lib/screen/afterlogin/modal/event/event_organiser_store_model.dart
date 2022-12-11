// To parse this JSON data, do
//
//     final eventOrganiserStoreModel = eventOrganiserStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/event/id/event.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/group/group.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/family/family.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

EventOrganiserStoreModel eventOrganiserStoreModelFromJson(String? str) => EventOrganiserStoreModel.fromJson(json.decode(str!));

String? eventOrganiserStoreModelToJson(EventOrganiserStoreModel data) => json.encode(data.toJson());

class EventOrganiserStoreModel {
  EventOrganiserStoreModel({
    this.id,
    this.organiser,
    this.event,
    this.family,
    this.member,
    this.society,
    this.group,
  });

  int? id;
  String? organiser;
  Event? event;
  Family? family;
  Member? member;
  Society? society;
  Group? group;

  factory EventOrganiserStoreModel.fromJson(Map<String, dynamic> json) => EventOrganiserStoreModel(
        id: json["id"],
        organiser: json["organiser"],
        event: Event.fromJson(json["event"]),
        family: json["family"] == null ? null : Family.fromJson(json["family"]),
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
        group: json["group"] == null ? null : Group.fromJson(json["group"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organiser": organiser,
        "event": event!.toJson(),
        "family": family!.toJson(),
        "member": member!.toJson(),
        "society": society!.toJson(),
        "group": group!.toJson(),
      };
}
