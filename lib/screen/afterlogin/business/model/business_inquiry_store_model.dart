// To parse this JSON data, do
//
//     final businessInquiryStoreModel = businessInquiryStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/business/business.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/customer.dart';

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
