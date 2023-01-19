// To parse this JSON data, do
//
//     final blogUpdateModel = blogUpdateModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BlogUpdateModel blogUpdateModelFromJson(String? str) => BlogUpdateModel.fromJson(json.decode(str!));

String? blogUpdateModelToJson(BlogUpdateModel data) => json.encode(data.toJson());

class BlogUpdateModel {
  BlogUpdateModel({
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

  factory BlogUpdateModel.fromJson(Map<String, dynamic> json) => BlogUpdateModel(
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
