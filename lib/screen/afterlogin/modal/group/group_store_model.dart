// To parse this JSON data, do
//
//     final groupStoreModel = groupStoreModelFromJson(jsonString);

import 'dart:convert';

GroupStoreModel groupStoreModelFromJson(String? str) =>
    GroupStoreModel.fromJson(json.decode(str!));

String? groupStoreModelToJson(GroupStoreModel data) =>
    json.encode(data.toJson());

class GroupStoreModel {
  GroupStoreModel({
    this.id,
    this.division,
    this.name,
    this.photo,
    this.about,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.isTotalGroupMember,
    this.typeofcategory,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.createdby,
    this.groupmember,
  });

  int? id;
  String? division;
  String? name;
  String? photo;
  String? about;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  int? isTotalGroupMember;
  Typeofcategory? typeofcategory;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  Country? society;
  Createdby? createdby;
  List<Groupmember>? groupmember;

  factory GroupStoreModel.fromJson(Map<String, dynamic> json) =>
      GroupStoreModel(
        id: json["id"],
        division: json["division"],
        name: json["name"],
        photo: json["photo"],
        about: json["about"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Country.fromJson(json["society"]),
        createdby: Createdby.fromJson(json["createdby"]),
        groupmember: List<Groupmember>.from(
            json["groupmember"].map((x) => Groupmember.fromJson(x))),
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
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
        "typeofcategory": typeofcategory!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "createdby": createdby!.toJson(),
        "groupmember": List<dynamic>.from(groupmember!.map((x) => x.toJson())),
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

class Groupmember {
  Groupmember({
    this.id,
    this.isRequest,
  });

  int? id;
  String? isRequest;

  factory Groupmember.fromJson(Map<String, dynamic> json) => Groupmember(
        id: json["id"],
        isRequest: json["is_request"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_request": isRequest,
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
