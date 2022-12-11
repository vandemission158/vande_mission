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
    this.option,
    this.optionName,
    this.optionAddress,
    this.storageUrl,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  String? option;
  String? optionName;
  String? optionAddress;
  String? storageUrl;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["id"],
        title: json["title"],
        option: json["option"],
        optionName: json["option_name"],
        optionAddress: json["option_address"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "option": option,
        "option_name": optionName,
        "option_address": optionAddress,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
