// To parse this JSON data, do
//
//     final eventInvitationModel = eventInvitationModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/event/id/event.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/event/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

EventInvitationModel eventInvitationModelFromJson(String? str) => EventInvitationModel.fromJson(json.decode(str!));

String? eventInvitationModelToJson(EventInvitationModel data) => json.encode(data.toJson());

class EventInvitationModel {
  EventInvitationModel({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory EventInvitationModel.fromJson(Map<String, dynamic> json) => EventInvitationModel(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        eventInvitationType: json["event_invitation_type"],
        event: Event.fromJson(json["event"]),
        village: json["village"] == null ? null : Village.fromJson(json["village"]),
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
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
