// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';

Product productFromJson(String? str) => Product.fromJson(json.decode(str!));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.id,
    this.type,
    this.name,
    this.image,
    this.video,
    this.price,
    this.maxRetailPrice,
    this.productType,
    this.propertyType,
    this.area,
    this.pincode,
    this.address,
    this.isSale,
    this.imageUrl,
    this.videoUrl,
    this.typeofcategory,
  });

  int? id;
  String? type;
  String? name;
  List<String>? image;
  dynamic video;
  String? price;
  String? maxRetailPrice;
  String? productType;
  dynamic propertyType;
  dynamic area;
  dynamic pincode;
  dynamic address;
  int? isSale;
  List<String>? imageUrl;
  dynamic videoUrl;
  Typeofcategory? typeofcategory;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        image: List<String>.from(json["image"].map((x) => x)),
        video: json["video"],
        price: json["price"],
        maxRetailPrice: json["max_retail_price"],
        productType: json["product_type"],
        propertyType: json["property_type"],
        area: json["area"],
        pincode: json["pincode"],
        address: json["address"],
        isSale: json["is_sale"],
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        videoUrl: json["video_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "image": List<dynamic>.from(image!.map((x) => x)),
        "video": video,
        "price": price,
        "max_retail_price": maxRetailPrice,
        "product_type": productType,
        "property_type": propertyType,
        "area": area,
        "pincode": pincode,
        "address": address,
        "is_sale": isSale,
        "image_url": List<dynamic>.from(imageUrl!.map((x) => x)),
        "video_url": videoUrl,
        "typeofcategory": typeofcategory!.toJson(),
      };
}
