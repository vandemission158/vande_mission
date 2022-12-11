// To parse this JSON data, do
//
//     final panchayatModel = panchayatModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/country.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/state.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/location/district.dart';

PanchayatModel panchayatModelFromJson(String? str) => PanchayatModel.fromJson(json.decode(str!));

String? panchayatModelToJson(PanchayatModel data) => json.encode(data.toJson());

class PanchayatModel {
  PanchayatModel({
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
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory PanchayatModel.fromJson(Map<String, dynamic> json) => PanchayatModel(
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
    this.name,
    this.totalvillage,
    this.country,
    this.state,
    this.district,
  });

  int? id;
  String? name;
  int? totalvillage;
  Country? country;
  State? state;
  District? district;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        totalvillage: json["totalvillage"],
        country: Country.fromJson(json["country"]),
        state: State.fromJson(json["state"]),
        district: District.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalvillage": totalvillage,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
      };
}
