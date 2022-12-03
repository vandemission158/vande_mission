// To parse this JSON data, do
//
//     final productStoreModel = productStoreModelFromJson(jsonString);

import 'dart:convert';

ProductStoreModel productStoreModelFromJson(String? str) =>
    ProductStoreModel.fromJson(json.decode(str!));

String? productStoreModelToJson(ProductStoreModel data) =>
    json.encode(data.toJson());

class ProductStoreModel {
  ProductStoreModel({
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

  factory ProductStoreModel.fromJson(Map<String, dynamic> json) =>
      ProductStoreModel(
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

class Createdby {
  Createdby({
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

  factory Createdby.fromJson(Map<String, dynamic> json) => Createdby(
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
