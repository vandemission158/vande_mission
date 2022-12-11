// To parse this JSON data, do
//
//     final bookChapterUpdateModel = bookChapterUpdateModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/video/video.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/book.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/book/chapter_pdf.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BookChapterUpdateModel bookChapterUpdateModelFromJson(String? str) => BookChapterUpdateModel.fromJson(json.decode(str!));

String? bookChapterUpdateModelToJson(BookChapterUpdateModel data) => json.encode(data.toJson());

class BookChapterUpdateModel {
  BookChapterUpdateModel({
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

  factory BookChapterUpdateModel.fromJson(Map<String, dynamic> json) => BookChapterUpdateModel(
        id: json["id"],
        chapter: json["chapter"],
        text: json["text"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: List<Video>.from(json["video"].map((x) => Video.fromJson(x))),
        chapterPdf: ChapterPdf.fromJson(json["chapter_pdf"]),
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
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": List<dynamic>.from(video!.map((x) => x.toJson())),
        "chapter_pdf": chapterPdf!.toJson(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "isEditChapter": isEditChapter,
        "isDeleteChapter": isDeleteChapter,
        "storage_url": storageUrl,
        "book": book!.toJson(),
        "member": member!.toJson(),
      };
}
