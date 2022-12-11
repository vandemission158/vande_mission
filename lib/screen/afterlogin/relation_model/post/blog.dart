// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';

Blog blogFromJson(String? str) => Blog.fromJson(json.decode(str!));

String blogToJson(Blog data) => json.encode(data.toJson());

class Blog {
  Blog({
    this.id,
    this.title,
    this.image,
    this.keywords,
    this.description,
    this.view,
    this.storageUrl,
    this.typeofcategory,
  });

  int? id;
  String? title;
  List<Image>? image;
  String? keywords;
  String? description;
  int? view;
  String? storageUrl;
  Typeofcategory? typeofcategory;

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        title: json["title"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        keywords: json["keywords"],
        description: json["description"],
        view: json["view"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "keywords": keywords,
        "description": description,
        "view": view,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
      };
}
