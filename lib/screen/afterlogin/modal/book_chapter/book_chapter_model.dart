// To parse this JSON data, do
//
//     final bookChapterModel = bookChapterModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
// import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/video/video.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/book.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/chapter_pdf.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BookChapterModel bookChapterModelFromJson(String? str) => BookChapterModel.fromJson(json.decode(str!));

String? bookChapterModelToJson(BookChapterModel data) => json.encode(data.toJson());

class BookChapterModel {
  BookChapterModel({
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

  factory BookChapterModel.fromJson(Map<String, dynamic> json) => BookChapterModel(
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
    this.chapter,
    this.text,
    this.image,
    this.video,
    this.chapterPdf,
    this.createdAt,
    this.updatedAt,
    this.isEditChapter,
    this.isDeleteChapter,
    this.storageUrl,
    this.book,
    this.member,
  });

  int? id;
  int? chapter;
  String? text;
  List<Image>? image;
  List<Video>? video;
  ChapterPdf? chapterPdf;
  String? createdAt;
  String? updatedAt;
  int? isEditChapter;
  int? isDeleteChapter;
  String? storageUrl;
  Book? book;
  Member? member;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        chapter: json["chapter"],
        text: json["text"],
        image: json["image"] == null ? null : List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: json["video"] == null ? null : List<Video>.from(json["video"].map((x) => Video.fromJson(x))),
        chapterPdf: json["chapter_pdf"] == null ? null : ChapterPdf.fromJson(json["chapter_pdf"]),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        isEditChapter: json["isEditChapter"],
        isDeleteChapter: json["isDeleteChapter"],
        storageUrl: json["storage_url"],
        book: Book.fromJson(json["book"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "chapter": chapter,
        "text": text,
        "image": image == null ? null : List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": video == null ? null : List<dynamic>.from(video!.map((x) => x.toJson())),
        "chapter_pdf": chapterPdf == null ? null : chapterPdf!.toJson(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "isEditChapter": isEditChapter,
        "isDeleteChapter": isDeleteChapter,
        "storage_url": storageUrl,
        "book": book!.toJson(),
        "member": member!.toJson(),
      };
}
