// To parse this JSON data, do
//
//     final adsStoreModel = adsStoreModelFromJson(jsonString);

import 'dart:convert';

AdsStoreModel adsStoreModelFromJson(String? str) => AdsStoreModel.fromJson(json.decode(str!));

String? adsStoreModelToJson(AdsStoreModel data) => json.encode(data.toJson());

class AdsStoreModel {
  AdsStoreModel({
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

  factory AdsStoreModel.fromJson(Map<String, dynamic> json) => AdsStoreModel(
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
