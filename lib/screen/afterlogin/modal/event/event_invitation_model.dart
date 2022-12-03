// To parse this JSON data, do
//
//     final eventInvitationModel = eventInvitationModelFromJson(jsonString);

import 'dart:convert';

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

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}
