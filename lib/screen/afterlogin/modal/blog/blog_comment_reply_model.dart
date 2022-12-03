// To parse this JSON data, do
//
//     final blogCommentReplyModel = blogCommentReplyModelFromJson(jsonString? );

import 'dart:convert';

BlogCommentReplyModel blogCommentReplyModelFromJson(String? str) =>
    BlogCommentReplyModel.fromJson(json.decode(str!));

String? blogCommentReplyModelToJson(BlogCommentReplyModel data) =>
    json.encode(data.toJson());

class BlogCommentReplyModel {
  BlogCommentReplyModel({
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

  factory BlogCommentReplyModel.fromJson(Map<String?, dynamic> json) =>
      BlogCommentReplyModel(
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

  Map<String?, dynamic> toJson() => {
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
    this.text,
    this.createdAt,
    this.totalLike,
    this.member,
  });

  int? id;
  String? text;
  String? createdAt;
  int? totalLike;
  Member? member;

  factory Datum.fromJson(Map<String?, dynamic> json) => Datum(
        id: json["id"],
        text: json["text"],
        createdAt: json["created_at"],
        totalLike: json["total_like"],
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "text": text,
        "created_at": createdAt,
        "total_like": totalLike,
        "member": member == null ? null : member!.toJson(),
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

  factory Member.fromJson(Map<String?, dynamic> json) => Member(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
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

  factory Link.fromJson(Map<String?, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String?, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}
