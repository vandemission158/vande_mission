// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';

Book bookFromJson(String? str) => Book.fromJson(json.decode(str!));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
  Book({
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
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
    this.typeofcategory,
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
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;
  Typeofcategory? typeofcategory;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
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
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
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
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
      };
}
