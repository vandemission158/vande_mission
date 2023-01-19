// To parse this JSON data, do
//
//     final eventUpdateModel = eventUpdateModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/subdistrict.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/village.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/society.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

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
  Country? country;
  State? state;
  District? district;
  Subdistrict? subdistrict;
  Village? village;
  Society? society;
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
        typeofcategory: json["typeofcategory"] == null ? null : Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: json["createdby"] == null ? null : Createdby.fromJson(json["createdby"]),
        country: json["country"] == null ? null : Country.fromJson(json["country"]),
        state: json["state"] == null ? null : State.fromJson(json["state"]),
        district: json["district"] == null ? null : District.fromJson(json["district"]),
        subdistrict: json["subdistrict"] == null ? null : Subdistrict.fromJson(json["subdistrict"]),
        village: json["village"] == null ? null : Village.fromJson(json["village"]),
        society: json["society"] == null ? null : Society.fromJson(json["society"]),
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
