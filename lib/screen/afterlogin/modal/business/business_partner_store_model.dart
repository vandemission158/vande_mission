// To parse this JSON data, do
//
//     final businessPartnerStoreModel = businessPartnerStoreModelFromJson(jsonString);

import 'dart:convert';

BusinessPartnerStoreModel businessPartnerStoreModelFromJson(String? str) => BusinessPartnerStoreModel.fromJson(json.decode(str!));

String? businessPartnerStoreModelToJson(BusinessPartnerStoreModel data) => json.encode(data.toJson());

class BusinessPartnerStoreModel {
  BusinessPartnerStoreModel({
    this.id,
    this.business,
    this.member,
  });

  int? id;
  Business? business;
  Member? member;

  factory BusinessPartnerStoreModel.fromJson(Map<String, dynamic> json) => BusinessPartnerStoreModel(
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
