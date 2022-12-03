// To parse this JSON data, do
//
//     final businessStoreModel = businessStoreModelFromJson(jsonString);

import 'dart:convert';

BusinessUpdateModel businessStoreModelFromJson(String? str) =>
    BusinessUpdateModel.fromJson(json.decode(str!));

String? businessStoreModelToJson(BusinessUpdateModel data) =>
    json.encode(data.toJson());

class BusinessUpdateModel {
  BusinessUpdateModel({
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
  dynamic area;
  String? pincode;
  dynamic location;
  dynamic latitude;
  dynamic longitude;
  String? experience;
  dynamic description;
  dynamic socialLink;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  dynamic society;

  factory BusinessUpdateModel.fromJson(Map<String, dynamic> json) =>
      BusinessUpdateModel(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        area: json["area"],
        pincode: json["pincode"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        experience: json["experience"],
        description: json["description"],
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
        "area": area,
        "pincode": pincode,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "experience": experience,
        "description": description,
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
