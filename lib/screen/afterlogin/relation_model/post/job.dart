// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

Job jobFromJson(String? str) => Job.fromJson(json.decode(str!));

String jobToJson(Job data) => json.encode(data.toJson());

class Job {
  Job({
    this.id,
    this.title,
    this.type,
    this.education,
    this.experience,
    this.option,
    this.optionName,
    this.optionWebsite,
    this.optionAddress,
    this.optionEmail,
    this.optionPhoneNumber,
    this.isClosed,
    this.storageUrl,
    this.typeofcategory,
  });

  int? id;
  String? title;
  String? type;
  String? education;
  String? experience;
  String? option;
  String? optionName;
  dynamic optionWebsite;
  String? optionAddress;
  String? optionEmail;
  String? optionPhoneNumber;
  int? isClosed;
  String? storageUrl;
  Typeofcategory? typeofcategory;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        education: json["education"],
        experience: json["experience"],
        option: json["option"],
        optionName: json["option_name"],
        optionWebsite: json["option_website"],
        optionAddress: json["option_address"],
        optionEmail: json["option_email"],
        optionPhoneNumber: json["option_phone_number"],
        isClosed: json["is_closed"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "education": education,
        "experience": experience,
        "option": option,
        "option_name": optionName,
        "option_website": optionWebsite,
        "option_address": optionAddress,
        "option_email": optionEmail,
        "option_phone_number": optionPhoneNumber,
        "is_closed": isClosed,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
      };
}
