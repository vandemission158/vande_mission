// To parse this JSON data, do
//
//     final productInterestStoreModel = productInterestStoreModelFromJson(jsonString);

import 'dart:convert';

ProductInterestStoreModel productInterestStoreModelFromJson(String? str) => ProductInterestStoreModel.fromJson(json.decode(str!));

String? productInterestStoreModelToJson(ProductInterestStoreModel data) => json.encode(data.toJson());

class ProductInterestStoreModel {
  ProductInterestStoreModel({
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

  factory ProductInterestStoreModel.fromJson(Map<String, dynamic> json) => ProductInterestStoreModel(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        product: Product.fromJson(json["product"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "product": product!.toJson(),
        "member": member!.toJson(),
      };
}

class Member {
  Member({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? phoneNumber;
  String? storageUrl;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
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
