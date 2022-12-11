// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

Property propertyFromJson(String? str) => Property.fromJson(json.decode(str!));

String propertyToJson(Property data) => json.encode(data.toJson());

class Property {
  Property({
    this.id,
    this.type,
    this.name,
    this.sku,
    this.image,
    this.video,
    this.price,
    this.maxRetailPrice,
    this.productType,
    this.propertyType,
    this.imageUrl,
    this.videoUrl,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? type;
  String? name;
  String? sku;
  List<String>? image;
  dynamic video;
  String? price;
  String? maxRetailPrice;
  String? productType;
  dynamic propertyType;
  List<String>? imageUrl;
  dynamic videoUrl;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        sku: json["sku"],
        image: List<String>.from(json["image"].map((x) => x)),
        video: json["video"],
        price: json["price"],
        maxRetailPrice: json["max_retail_price"],
        productType: json["productType"],
        propertyType: json["property_type"],
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        videoUrl: json["video_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "sku": sku,
        "image": List<dynamic>.from(image!.map((x) => x)),
        "video": video,
        "price": price,
        "max_retail_price": maxRetailPrice,
        "productType": productType,
        "property_type": propertyType,
        "image_url": List<dynamic>.from(imageUrl!.map((x) => x)),
        "video_url": videoUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
