// To parse this JSON data, do
//
//     final businessModel = businessModelFromJson(jsonString);

import 'dart:convert';

BusinessModel businessModelFromJson(String? str) =>
    BusinessModel.fromJson(json.decode(str!));

String? businessModelToJson(BusinessModel data) => json.encode(data.toJson());

class BusinessModel {
  BusinessModel({
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

  factory BusinessModel.fromJson(Map<String, dynamic> json) => BusinessModel(
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
    this.type,
    this.name,
    this.area,
    this.pincode,
    this.location,
    this.latitude,
    this.longitude,
    this.experience,
    this.description,
    this.socialLink,
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
  String? type;
  String? name;
  String? area;
  String? pincode;
  dynamic location;
  dynamic latitude;
  dynamic longitude;
  String? experience;
  String? description;
  dynamic socialLink;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  dynamic society;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        area: json["area"] == null ? null : json["area"],
        pincode: json["pincode"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        experience: json["experience"],
        description: json["description"] == null ? null : json["description"],
        socialLink: json["social_link"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: json["society"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "area": area == null ? null : area,
        "pincode": pincode,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "experience": experience,
        "description": description == null ? null : description,
        "social_link": socialLink,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society,
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
  String? parent;

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
