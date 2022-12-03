// To parse this JSON data, do
//
//     final bookChapterModel = bookChapterModelFromJson(jsonString);

import 'dart:convert';

BookChapterModel bookChapterModelFromJson(String? str) =>
    BookChapterModel.fromJson(json.decode(str!));

String? bookChapterModelToJson(BookChapterModel data) =>
    json.encode(data.toJson());

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

  factory BookChapterModel.fromJson(Map<String, dynamic> json) =>
      BookChapterModel(
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
        image: json["image"] == null
            ? null
            : List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: json["video"] == null
            ? null
            : List<Video>.from(json["video"].map((x) => Video.fromJson(x))),
        chapterPdf: json["chapter_pdf"] == null
            ? null
            : ChapterPdf.fromJson(json["chapter_pdf"]),
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
        "image": image == null
            ? null
            : List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": video == null
            ? null
            : List<dynamic>.from(video!.map((x) => x.toJson())),
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

class Book {
  Book({
    this.id,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
    this.isTotalIndex,
  });

  int? id;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;
  int? isTotalIndex;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
        isTotalIndex:
            json["isTotalIndex"] == null ? null : json["isTotalIndex"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
        "isTotalIndex": isTotalIndex == null ? null : isTotalIndex,
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
  bool? videoPath;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        videoName: json["video_name"],
        videoPath: json["video_path"],
      );

  Map<String, dynamic> toJson() => {
        "video_name": videoName,
        "video_path": videoPath,
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
