// To parse this JSON data, do
//
//     final bookChapterStoreModel = bookChapterStoreModelFromJson(jsonString);

import 'dart:convert';

BookChapterStoreModel bookChapterStoreModelFromJson(String? str) =>
    BookChapterStoreModel.fromJson(json.decode(str!));

String? bookChapterStoreModelToJson(BookChapterStoreModel data) =>
    json.encode(data.toJson());

class BookChapterStoreModel {
  BookChapterStoreModel({
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

  factory BookChapterStoreModel.fromJson(Map<String, dynamic> json) =>
      BookChapterStoreModel(
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

class Book {
  Book({
    this.id,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
  });

  int? id;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
      };
}

class ChapterPdf {
  ChapterPdf({
    this.fileName,
    this.filePath,
  });

  String? fileName;
  String? filePath;

  factory ChapterPdf.fromJson(Map<String, dynamic> json) => ChapterPdf(
        fileName: json["fileName"],
        filePath: json["filePath"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "filePath": filePath,
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

class Video {
  Video({
    this.videoName,
    this.videoPath,
  });

  String? videoName;
  String? videoPath;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        videoName: json["video_name"],
        videoPath: json["video_path"],
      );

  Map<String, dynamic> toJson() => {
        "video_name": videoName,
        "video_path": videoPath,
      };
}
