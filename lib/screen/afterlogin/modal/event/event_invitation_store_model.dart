// To parse this JSON data, do
//
//     final eventInvitationStoreModel = eventInvitationStoreModelFromJson(jsonString);

import 'dart:convert';

EventInvitationStoreModel eventInvitationStoreModelFromJson(String? str) =>
    EventInvitationStoreModel.fromJson(json.decode(str!));

String? eventInvitationStoreModelToJson(EventInvitationStoreModel data) =>
    json.encode(data.toJson());

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

  factory EventInvitationStoreModel.fromJson(Map<String, dynamic> json) =>
      EventInvitationStoreModel(
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

class Member {
  Member({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  dynamic phoneNumber;
  String? storageUrl;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}

class Society {
  Society({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Society.fromJson(Map<String, dynamic> json) => Society(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Village {
  Village({
    this.id,
    this.name,
    this.totalsociety,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
  });

  int? id;
  String? name;
  int? totalsociety;
  Society? country;
  Society? state;
  Society? district;
  Society? subdistrict;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
        country: Society.fromJson(json["country"]),
        state: Society.fromJson(json["state"]),
        district: Society.fromJson(json["district"]),
        subdistrict: Society.fromJson(json["subdistrict"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
      };
}
