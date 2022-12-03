// To parse this JSON data, do
//
//     final familyModel = familyModelFromJson(jsonString);

import 'dart:convert';

FamilyModel familyModelFromJson(String? str) =>
    FamilyModel.fromJson(json.decode(str!));

String? familyModelToJson(FamilyModel data) => json.encode(data.toJson());

class FamilyModel {
  FamilyModel({
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

  factory FamilyModel.fromJson(Map<String, dynamic> json) => FamilyModel(
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
    this.addressType,
    this.area,
    this.pincode,
    this.isCurrentAddress,
    this.familyIdentityNumber,
    this.houseNumber,
    this.type,
    this.storageUrl,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.owner,
    this.otherAddress,
    this.mainmember,
  });

  int? id;
  String? addressType;
  String? area;
  String? pincode;
  int? isCurrentAddress;
  dynamic familyIdentityNumber;
  String? houseNumber;
  String? type;
  String? storageUrl;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  Country? society;
  dynamic owner;
  List<dynamic>? otherAddress;
  List<dynamic>? mainmember;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        addressType: json["address_type"],
        area: json["area"] == null ? null : json["area"],
        pincode: json["pincode"],
        isCurrentAddress: json["is_current_address"],
        familyIdentityNumber: json["family_identity_number"],
        houseNumber: json["house_number"] == null ? null : json["house_number"],
        type: json["type"],
        storageUrl: json["storage_url"],
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society:
            json["society"] == null ? null : Country.fromJson(json["society"]),
        owner: json["owner"],
        otherAddress: List<dynamic>.from(json["other_address"].map((x) => x)),
        mainmember: List<dynamic>.from(json["mainmember"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address_type": addressType,
        "area": area == null ? null : area,
        "pincode": pincode,
        "is_current_address": isCurrentAddress,
        "family_identity_number": familyIdentityNumber,
        "house_number": houseNumber == null ? null : houseNumber,
        "type": type,
        "storage_url": storageUrl,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society == null ? null : society!.toJson(),
        "owner": owner,
        "other_address": List<dynamic>.from(otherAddress!.map((x) => x)),
        "mainmember": List<dynamic>.from(mainmember!.map((x) => x)),
      };
}

class Country {
  Country({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Village {
  Village({
    this.id,
    this.name,
    this.totalsociety,
  });

  int? id;
  String? name;
  int? totalsociety;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
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
