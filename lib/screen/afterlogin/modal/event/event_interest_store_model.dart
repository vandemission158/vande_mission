// To parse this JSON data, do
//
//     final eventInterestStoreModel = eventInterestStoreModelFromJson(jsonString);

import 'dart:convert';

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
  String? phoneNumber;
  String? storageUrl;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber == null ? null : phoneNumber,
        "storage_url": storageUrl,
      };
}

class Typeofcategory {
  Typeofcategory({
    this.id,
    this.type,
    this.category,
  });

  int? id;
  String? type;
  Category? category;

  factory Typeofcategory.fromJson(Map<String, dynamic> json) => Typeofcategory(
        id: json["id"],
        type: json["type"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "category": category!.toJson(),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.parent,
  });

  int? id;
  String? name;
  dynamic parent;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        parent: json["parent"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent": parent,
      };
}
