// To parse this JSON data, do
//
//     final blogModel = blogModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BlogModel blogModelFromJson(String? str) => BlogModel.fromJson(json.decode(str!));

String? blogModelToJson(BlogModel data) => json.encode(data.toJson());

class BlogModel {
  BlogModel({
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

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
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
    this.title,
    this.keywords,
    this.image,
    this.video,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.totalLike,
    this.totalDislike,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  String? keywords;
  List<Image>? image;
  dynamic video;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  int? totalLike;
  int? totalDislike;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        keywords: json["keywords"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: json["video"],
        description: json["description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        totalLike: json["total_like"],
        totalDislike: json["total_dislike"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "keywords": keywords,
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": video,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "total_like": totalLike,
        "total_dislike": totalDislike,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
