// To parse this JSON data, do
//
//     final adsModel = adsModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';

AdsModel adsModelFromJson(String? str) => AdsModel.fromJson(json.decode(str!));

String? adsModelToJson(AdsModel data) => json.encode(data.toJson());

class AdsModel {
  AdsModel({
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

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
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
    this.adMediaType,
    this.adMediaImage,
    this.adMediaVideo,
    this.adMediaCarousel,
    this.headline,
    this.description,
    this.startDatetime,
    this.endDatetime,
    this.url,
    this.location,
    this.audience,
    this.bidding,
    this.appears,
    this.storageUrl,
  });

  int? id;
  String? name;
  String? adMediaType;
  List<dynamic>? adMediaImage;
  List<dynamic>? adMediaVideo;
  List<dynamic>? adMediaCarousel;
  String? headline;
  String? description;
  DateTime? startDatetime;
  DateTime? endDatetime;
  dynamic url;
  dynamic location;
  String? audience;
  String? bidding;
  String? appears;
  String? storageUrl;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        adMediaType: json["ad_media_type"],
        adMediaImage: List<dynamic>.from(json["ad_media_image"].map((x) => x)),
        adMediaVideo: List<dynamic>.from(json["ad_media_video"].map((x) => x)),
        adMediaCarousel: List<dynamic>.from(json["ad_media_carousel"].map((x) => x)),
        headline: json["headline"],
        description: json["description"],
        startDatetime: DateTime.parse(json["start_datetime"]),
        endDatetime: DateTime.parse(json["end_datetime"]),
        url: json["url"],
        location: json["location"],
        audience: json["audience"],
        bidding: json["bidding"],
        appears: json["appears"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ad_media_type": adMediaType,
        "ad_media_image": List<dynamic>.from(adMediaImage!.map((x) => x)),
        "ad_media_video": List<dynamic>.from(adMediaVideo!.map((x) => x)),
        "ad_media_carousel": List<dynamic>.from(adMediaCarousel!.map((x) => x)),
        "headline": headline,
        "description": description,
        "start_datetime": startDatetime!.toIso8601String(),
        "end_datetime": endDatetime!.toIso8601String(),
        "url": url,
        "location": location,
        "audience": audience,
        "bidding": bidding,
        "appears": appears,
        "storage_url": storageUrl,
      };
}
