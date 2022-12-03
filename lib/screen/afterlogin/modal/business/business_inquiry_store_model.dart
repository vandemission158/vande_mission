// To parse this JSON data, do
//
//     final businessInquiryStoreModel = businessInquiryStoreModelFromJson(jsonString);

import 'dart:convert';

BusinessInquiryStoreModel businessInquiryStoreModelFromJson(String? str) => BusinessInquiryStoreModel.fromJson(json.decode(str!));

String? businessInquiryStoreModelToJson(BusinessInquiryStoreModel data) => json.encode(data.toJson());

class BusinessInquiryStoreModel {
  BusinessInquiryStoreModel({
    this.id,
    this.message,
    this.location,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
    this.business,
    this.customer,
  });

  int? id;
  String? message;
  dynamic location;
  dynamic latitude;
  dynamic longitude;
  String? createdAt;
  String? updatedAt;
  Business? business;
  Customer? customer;

  factory BusinessInquiryStoreModel.fromJson(Map<String, dynamic> json) => BusinessInquiryStoreModel(
        id: json["id"],
        message: json["message"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        business: Business.fromJson(json["business"]),
        customer: Customer.fromJson(json["customer"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "business": business!.toJson(),
        "customer": customer!.toJson(),
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

class Customer {
  Customer({
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

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
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
