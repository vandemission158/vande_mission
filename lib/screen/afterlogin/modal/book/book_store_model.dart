// To parse this JSON data, do
//
//     final bookStoreModel = bookStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BookStoreModel bookStoreModelFromJson(String? str) => BookStoreModel.fromJson(json.decode(str!));

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
        "publishing_date": "${publishingDate!.year.toString().padLeft(4, '0')}-${publishingDate!.month.toString().padLeft(2, '0')}-${publishingDate!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
