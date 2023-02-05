// To parse this JSON data, do
//
//     final propertyStoreModel = propertyStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

PropertyStoreModel propertyStoreModelFromJson(String? str) => PropertyStoreModel.fromJson(json.decode(str!));

String? propertyStoreModelToJson(PropertyStoreModel data) => json.encode(data.toJson());

class PropertyStoreModel {
  PropertyStoreModel({
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
    this.description,
    this.area,
    this.pincode,
    this.address,
    this.isSale,
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
  dynamic description;
  dynamic area;
  dynamic pincode;
  dynamic address;
  int? isSale;
  List<String>? imageUrl;
  dynamic videoUrl;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory PropertyStoreModel.fromJson(Map<String, dynamic> json) => PropertyStoreModel(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        sku: json["sku"],
        image: List<String>.from(json["image"].map((x) => x)),
        video: json["video"],
        price: json["price"],
        maxRetailPrice: json["max_retail_price"],
        productType: json["product_type"],
        propertyType: json["property_type"],
        description: json["description"],
        area: json["area"],
        pincode: json["pincode"],
        address: json["address"],
        isSale: json["is_sale"],
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
        "product_type": productType,
        "property_type": propertyType,
        "description": description,
        "area": area,
        "pincode": pincode,
        "address": address,
        "is_sale": isSale,
        "image_url": List<dynamic>.from(imageUrl!.map((x) => x)),
        "video_url": videoUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
