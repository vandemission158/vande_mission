// To parse this JSON data, do
//
//     final blogModel = blogModelFromJson(jsonString);

import 'dart:convert';

BlogModel blogModelFromJson(String? str) =>
    BlogModel.fromJson(json.decode(str!));

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

class Image {
  Image({
    this.imageName,
    this.imagePath,
  });

  String? imageName;
  String? imagePath;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageName: json["image_name"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "image_name": imageName,
        "image_path": imagePath,
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

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}
