// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String? str) =>
    BookModel.fromJson(json.decode(str!));

String? bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
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

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
