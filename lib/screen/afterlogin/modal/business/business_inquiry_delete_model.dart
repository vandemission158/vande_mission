// To parse this JSON data, do
//
//     final businessInquiryDeleteModel = businessInquiryDeleteModelFromJson(jsonString);

import 'dart:convert';

BusinessInquiryDeleteModel businessInquiryDeleteModelFromJson(String str) => BusinessInquiryDeleteModel.fromJson(json.decode(str));

String businessInquiryDeleteModelToJson(BusinessInquiryDeleteModel data) => json.encode(data.toJson());

class BusinessInquiryDeleteModel {
  BusinessInquiryDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BusinessInquiryDeleteModel.fromJson(Map<String, dynamic> json) => BusinessInquiryDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
