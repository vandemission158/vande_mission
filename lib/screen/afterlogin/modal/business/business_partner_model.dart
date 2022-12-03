// To parse this JSON data, do
//
//     final businessPartnerModel = businessPartnerModelFromJson(jsonString);

import 'dart:convert';

BusinessPartnerModel businessPartnerModelFromJson(String? str) => BusinessPartnerModel.fromJson(json.decode(str!));

String? businessPartnerModelToJson(BusinessPartnerModel data) => json.encode(data.toJson());

class BusinessPartnerModel {
  BusinessPartnerModel({
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

  factory BusinessPartnerModel.fromJson(Map<String, dynamic> json) => BusinessPartnerModel(
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
    this.business,
    this.member,
  });

  int? id;
  Business? business;
  Member? member;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        business: Business.fromJson(json["business"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business": business!.toJson(),
        "member": member!.toJson(),
      };
}

class Business {
  Business({
    this.id,
    this.name,
    this.typeofcategory,
    this.createdby,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
  });

  int? id;
  String? name;
  dynamic typeofcategory;
  dynamic createdby;
  dynamic country;
  dynamic state;
  dynamic district;
  dynamic subdistrict;
  dynamic village;
  dynamic society;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        id: json["id"],
        name: json["name"],
        typeofcategory: json["typeofcategory"],
        createdby: json["createdby"],
        country: json["country"],
        state: json["state"],
        district: json["district"],
        subdistrict: json["subdistrict"],
        village: json["village"],
        society: json["society"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "typeofcategory": typeofcategory,
        "createdby": createdby,
        "country": country,
        "state": state,
        "district": district,
        "subdistrict": subdistrict,
        "village": village,
        "society": society,
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
