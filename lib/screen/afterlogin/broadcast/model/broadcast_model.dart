// To parse this JSON data, do
//
//     final broadcastModel = broadcastModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BroadcastModel broadcastModelFromJson(String? str) => BroadcastModel.fromJson(json.decode(str!));

String? broadcastModelToJson(BroadcastModel data) => json.encode(data.toJson());

class BroadcastModel {
  BroadcastModel({
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

  factory BroadcastModel.fromJson(Map<String, dynamic> json) => BroadcastModel(
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
    this.title,
    this.message,
    this.photo,
    this.broadcastType,
    this.isShow,
    this.storageUrl,
    this.createdby,
  });

  String? title;
  String? message;
  dynamic photo;
  String? broadcastType;
  int? isShow;
  String? storageUrl;
  Createdby? createdby;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["title"],
        message: json["message"],
        photo: json["photo"],
        broadcastType: json["broadcast_type"],
        isShow: json["is_show"],
        storageUrl: json["storage_url"],
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "message": message,
        "photo": photo,
        "broadcast_type": broadcastType,
        "is_show": isShow,
        "storage_url": storageUrl,
        "createdby": createdby!.toJson(),
      };
}
