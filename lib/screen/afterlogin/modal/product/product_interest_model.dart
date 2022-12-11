// To parse this JSON data, do
//
//     final productInterestModel = productInterestModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

ProductInterestModel productInterestModelFromJson(String? str) => ProductInterestModel.fromJson(json.decode(str!));

String? productInterestModelToJson(ProductInterestModel data) => json.encode(data.toJson());

class ProductInterestModel {
  ProductInterestModel({
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

  factory ProductInterestModel.fromJson(Map<String, dynamic> json) => ProductInterestModel(
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
    this.createdAt,
    this.updatedAt,
    this.product,
    this.member,
  });

  int? id;
  String? createdAt;
  String? updatedAt;
  Product? product;
  Member? member;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        product: Product.fromJson(json["product"]),
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "product": product!.toJson(),
        "member": member == null ? null : member!.toJson(),
      };
}

class Product {
  Product({
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
  Member? createdby;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        videoUrl: json["video_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Member.fromJson(json["createdby"]),
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
        "image_url": List<dynamic>.from(imageUrl!.map((x) => x)),
        "video_url": videoUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}

class Typeofcategory {
  Typeofcategory({
    this.id,
    this.type,
    this.category,
  });

  int? id;
  String? type;
  Category? category;

  factory Typeofcategory.fromJson(Map<String, dynamic> json) => Typeofcategory(
        id: json["id"],
        type: json["type"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "category": category!.toJson(),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.parent,
  });

  int? id;
  String? name;
  dynamic parent;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        parent: json["parent"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent": parent,
      };
}
