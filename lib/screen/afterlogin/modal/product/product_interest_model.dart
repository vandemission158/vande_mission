// To parse this JSON data, do
//
//     final productInterestModel = productInterestModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/product/product.dart';
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
