// To parse this JSON data, do
//
//     final groupModel = groupModelFromJson(jsonString);

import 'dart:convert';

GroupModel groupModelFromJson(String? str) => GroupModel.fromJson(json.decode(str!));

String? groupModelToJson(GroupModel data) => json.encode(data.toJson());

class GroupModel {
  GroupModel({
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
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
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
  State? state;
  District? district;
  SubDistrict? subdistrict;
  Village? village;
  Society? society;
  Createdby? createdby;
  List<Groupmember>? groupmember;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        division: json["division"],
        name: json["name"],
        photo: json["photo"] == null ? null : json["photo"],
        about: json["about"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
        typeofcategory: json["typeofcategory"] == null ? null : Typeofcategory.fromJson(json["typeofcategory"]),
        country: Country.fromJson(json["country"]),
        state: State.fromJson(json["state"]),
        district: District.fromJson(json["district"]),
        subdistrict: SubDistrict.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Society.fromJson(json["society"]),
        createdby: Createdby.fromJson(json["createdby"]),
        groupmember: List<Groupmember>.from(json["groupmember"].map((x) => Groupmember.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "division": division,
        "name": name,
        "photo": photo == null ? null : photo,
        "about": about,
        "type": type,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
        "typeofcategory": typeofcategory == null ? null : typeofcategory!.toJson(),
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

class State {
  State({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory State.fromJson(Map<String, dynamic> json) => State(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class District {
  District({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory District.fromJson(Map<String, dynamic> json) => District(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class SubDistrict {
  SubDistrict({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory SubDistrict.fromJson(Map<String, dynamic> json) => SubDistrict(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Society {
  Society({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Society.fromJson(Map<String, dynamic> json) => Society(
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
