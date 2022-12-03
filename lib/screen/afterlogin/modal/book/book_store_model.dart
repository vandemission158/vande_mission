// To parse this JSON data, do
//
//     final bookStoreModel = bookStoreModelFromJson(jsonString);

import 'dart:convert';

BookStoreModel bookStoreModelFromJson(String? str) =>
    BookStoreModel.fromJson(json.decode(str!));

String? bookStoreModelToJson(BookStoreModel data) => json.encode(data.toJson());

class BookStoreModel {
  BookStoreModel({
    this.id,
    this.title,
    this.edition,
    this.bookPdf,
    this.priceType,
    this.price,
    this.website,
    this.language,
    this.publisherType,
    this.publishingDate,
    this.createdAt,
    this.updatedAt,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  int? edition;
  dynamic bookPdf;
  String? priceType;
  dynamic price;
  dynamic website;
  String? language;
  String? publisherType;
  DateTime? publishingDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory BookStoreModel.fromJson(Map<String, dynamic> json) => BookStoreModel(
        id: json["id"],
        title: json["title"],
        edition: json["edition"],
        bookPdf: json["book_pdf"],
        priceType: json["price_type"],
        price: json["price"],
        website: json["website"],
        language: json["language"],
        publisherType: json["publisher_type"],
        publishingDate: DateTime.parse(json["publishing_date"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "edition": edition,
        "book_pdf": bookPdf,
        "price_type": priceType,
        "price": price,
        "website": website,
        "language": language,
        "publisher_type": publisherType,
        "publishing_date":
            "${publishingDate!.year.toString().padLeft(4, '0')}-${publishingDate!.month.toString().padLeft(2, '0')}-${publishingDate!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
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
