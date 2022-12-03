// To parse this JSON data, do
//
//     final eventUpdateModel = eventUpdateModelFromJson(jsonString);

import 'dart:convert';

EventUpdateModel eventUpdateModelFromJson(String? str) => EventUpdateModel.fromJson(json.decode(str!));

String? eventUpdateModelToJson(EventUpdateModel data) => json.encode(data.toJson());

class EventUpdateModel {
  EventUpdateModel({
    this.id,
    this.countryId,
    this.stateId,
    this.districtId,
    this.subdistrictId,
    this.villageId,
    this.societyId,
    this.area,
    this.location,
    this.title,
    this.datetype,
    this.startDatetime,
    this.endDatetime,
    this.allowEndDate,
    this.notes,
    this.organiser,
    this.eventInvitationType,
    this.epass,
    this.paid,
    this.price,
    this.readCount,
    this.isAlert,
    this.isAlertType,
    this.isAlertCustomize,
    this.createdAt,
    this.updatedAt,
    this.typeofcategory,
    this.createdby,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.eventOrganiser,
  });

  int? id;
  dynamic countryId;
  dynamic stateId;
  dynamic districtId;
  dynamic subdistrictId;
  dynamic villageId;
  dynamic societyId;
  dynamic area;
  String? location;
  String? title;
  String? datetype;
  DateTime? startDatetime;
  DateTime? endDatetime;
  int? allowEndDate;
  dynamic notes;
  dynamic organiser;
  dynamic eventInvitationType;
  int? epass;
  int? paid;
  String? price;
  dynamic readCount;
  String? isAlert;
  String? isAlertType;
  dynamic isAlertCustomize;
  String? createdAt;
  String? updatedAt;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  dynamic country;
  dynamic state;
  dynamic district;
  dynamic subdistrict;
  dynamic village;
  dynamic society;
  List<dynamic>? eventOrganiser;

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) => EventUpdateModel(
        id: json["id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        districtId: json["district_id"],
        subdistrictId: json["subdistrict_id"],
        villageId: json["village_id"],
        societyId: json["society_id"],
        area: json["area"],
        location: json["location"],
        title: json["title"],
        datetype: json["datetype"],
        startDatetime: DateTime.parse(json["start_datetime"]),
        endDatetime: DateTime.parse(json["end_datetime"]),
        allowEndDate: json["allow_end_date"],
        notes: json["notes"],
        organiser: json["organiser"],
        eventInvitationType: json["event_invitation_type"],
        epass: json["epass"],
        paid: json["paid"],
        price: json["price"],
        readCount: json["read_count"],
        isAlert: json["is_alert"],
        isAlertType: json["is_alert_type"],
        isAlertCustomize: json["is_alert_customize"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
        country: json["country"],
        state: json["state"],
        district: json["district"],
        subdistrict: json["subdistrict"],
        village: json["village"],
        society: json["society"],
        eventOrganiser: List<dynamic>.from(json["event_organiser"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_id": countryId,
        "state_id": stateId,
        "district_id": districtId,
        "subdistrict_id": subdistrictId,
        "village_id": villageId,
        "society_id": societyId,
        "area": area,
        "title": title,
        "datetype": datetype,
        "start_datetime": startDatetime!.toIso8601String(),
        "end_datetime": endDatetime!.toIso8601String(),
        "allow_end_date": allowEndDate,
        "location": location,
        "notes": notes,
        "organiser": organiser,
        "event_invitation_type": eventInvitationType,
        "epass": epass,
        "paid": paid,
        "price": price,
        "read_count": readCount,
        "is_alert": isAlert,
        "is_alert_type": isAlertType,
        "is_alert_customize": isAlertCustomize,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "event_organiser": List<dynamic>.from(eventOrganiser!.map((x) => x)),
      };
}

class Country {
  Country({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Createdby {
  Createdby({
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

  factory Createdby.fromJson(Map<String, dynamic> json) => Createdby(
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

class Village {
  Village({
    this.id,
    this.name,
    this.totalsociety,
  });

  int? id;
  String? name;
  int? totalsociety;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
      };
}
