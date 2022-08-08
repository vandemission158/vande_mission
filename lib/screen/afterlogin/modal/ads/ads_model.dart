// To parse this JSON data, do
//
//     final adsModal = adsModalFromJson(jsonString);

import 'dart:convert';

AdsModel adsModalFromJson(String str) => AdsModel.fromJson(json.decode(str));

String adsModalToJson(AdsModel data) => json.encode(data.toJson());

class AdsModel {
  AdsModel({
    this.id,
    this.division,
    this.name,
    this.photo,
    this.about,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.photoUrl,
    this.isTotalAdsMember,
    this.typeofcategory,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.owner,
    this.adsmember,
  });

  int? id;
  String? division;
  String? name;
  dynamic photo;
  String? about;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? photoUrl;
  int? isTotalAdsMember;
  Typeofcategory? typeofcategory;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  Country? society;
  Owner? owner;
  List<dynamic>? adsmember;

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
        id: json["id"],
        division: json["division"],
        name: json["name"],
        photo: json["photo"],
        about: json["about"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        photoUrl: json["photo_url"],
        isTotalAdsMember: json["isTotalAdsMember"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Country.fromJson(json["society"]),
        owner: Owner.fromJson(json["owner"]),
        adsmember: List<dynamic>.from(json["adsmember"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "division": division,
        "name": name,
        "photo": photo,
        "about": about,
        "type": type,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "photo_url": photoUrl,
        "isTotalAdsMember": isTotalAdsMember,
        "typeofcategory": typeofcategory!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "owner": owner!.toJson(),
        "adsmember": List<dynamic>.from(adsmember!.map((x) => x)),
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

class Owner {
  Owner({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? storageUrl;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
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
