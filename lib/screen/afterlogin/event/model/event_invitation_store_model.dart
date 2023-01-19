// To parse this JSON data, do
//
//     final eventInvitationStoreModel = eventInvitationStoreModelFromJson(jsonString);

import 'dart:convert';
import 'package:vande_mission/screen/afterlogin/relation_model/event/id/event.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

EventInvitationStoreModel eventInvitationStoreModelFromJson(String? str) => EventInvitationStoreModel.fromJson(json.decode(str!));

String? eventInvitationStoreModelToJson(EventInvitationStoreModel data) => json.encode(data.toJson());

class EventInvitationStoreModel {
  EventInvitationStoreModel({
    this.id,
    this.eventInvitationType,
    this.event,
    this.village,
    this.member,
    this.society,
  });

  int? id;
  String? eventInvitationType;
  Event? event;
  Village? village;
  Member? member;
  Society? society;

  factory EventInvitationStoreModel.fromJson(Map<String, dynamic> json) => EventInvitationStoreModel(
        id: json["id"],
        eventInvitationType: json["event_invitation_type"],
        event: Event.fromJson(json["event"]),
        village: Village.fromJson(json["village"]),
        member: Member.fromJson(json["member"]),
        society: Society.fromJson(json["society"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "event_invitation_type": eventInvitationType,
        "event": event!.toJson(),
        "village": village!.toJson(),
        "member": member!.toJson(),
        "society": society!.toJson(),
      };
}
