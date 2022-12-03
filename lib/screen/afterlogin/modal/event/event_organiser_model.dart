// To parse this JSON data, do
//
//     final eventOrganiserModel = eventOrganiserModelFromJson(jsonString);

import 'dart:convert';

EventOrganiserModel eventOrganiserModelFromJson(String? str) =>
    EventOrganiserModel.fromJson(json.decode(str!));

String? eventOrganiserModelToJson(EventOrganiserModel data) =>
    json.encode(data.toJson());

class EventOrganiserModel {
  EventOrganiserModel({
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

  factory EventOrganiserModel.fromJson(Map<String, dynamic> json) =>
      EventOrganiserModel(
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        organiser: json["organiser"],
        event: Event.fromJson(json["event"]),
        family: Family.fromJson(json["family"]),
        member: Member.fromJson(json["member"]),
        society: Society.fromJson(json["society"]),
        group: Group.fromJson(json["group"]),
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

class Family {
  Family({
    this.id,
    this.houseNumber,
    this.storageUrl,
    this.mainmember,
  });

  int? id;
  dynamic houseNumber;
  String? storageUrl;
  List<Member>? mainmember;

  factory Family.fromJson(Map<String, dynamic> json) => Family(
        id: json["id"],
        houseNumber: json["house_number"],
        storageUrl: json["storage_url"],
        mainmember: List<Member>.from(
            json["mainmember"].map((x) => Member.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "house_number": houseNumber,
        "storage_url": storageUrl,
        "mainmember": List<dynamic>.from(mainmember!.map((x) => x.toJson())),
      };
}

class Member {
  Member({
    this.id,
    this.firstName,
    this.lastName,
    this.middleName,
    this.storageUrl,
    this.phoneNumber,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? middleName;
  String? storageUrl;
  dynamic phoneNumber;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        storageUrl: json["storage_url"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "storage_url": storageUrl,
        "phone_number": phoneNumber,
      };
}

class Group {
  Group({
    this.id,
    this.name,
    this.storageUrl,
    this.isTotalGroupMember,
  });

  int? id;
  String? name;
  String? storageUrl;
  int? isTotalGroupMember;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        name: json["name"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
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
