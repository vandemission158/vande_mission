// To parse this JSON data, do
//
//     final eventInvitationDeleteModel = eventInvitationDeleteModelFromJson(jsonString);

import 'dart:convert';

EventInvitationDeleteModel eventInvitationDeleteModelFromJson(String str) => EventInvitationDeleteModel.fromJson(json.decode(str));

String eventInvitationDeleteModelToJson(EventInvitationDeleteModel data) => json.encode(data.toJson());

class EventInvitationDeleteModel {
  EventInvitationDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory EventInvitationDeleteModel.fromJson(Map<String, dynamic> json) => EventInvitationDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
