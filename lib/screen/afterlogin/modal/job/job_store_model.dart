// To parse this JSON data, do
//
//     final jobStoreModel = jobStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

JobStoreModel jobStoreModelFromJson(String? str) => JobStoreModel.fromJson(json.decode(str!));

String? jobStoreModelToJson(JobStoreModel data) => json.encode(data.toJson());

class JobStoreModel {
  JobStoreModel({
    this.id,
    this.title,
    this.type,
    this.education,
    this.skill,
    this.experience,
    this.salaryType,
    this.minSalary,
    this.maxSalary,
    this.vacancy,
    this.advertisement,
    this.sector,
    this.description,
    this.option,
    this.optionName,
    this.optionWebsite,
    this.optionAddress,
    this.optionEmail,
    this.optionPhoneNumber,
    this.isClosed,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  String? type;
  String? education;
  String? skill;
  String? experience;
  String? salaryType;
  String? minSalary;
  String? maxSalary;
  int? vacancy;
  dynamic advertisement;
  String? sector;
  dynamic description;
  String? option;
  String? optionName;
  dynamic optionWebsite;
  String? optionAddress;
  String? optionEmail;
  String? optionPhoneNumber;
  int? isClosed;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory JobStoreModel.fromJson(Map<String, dynamic> json) => JobStoreModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        education: json["education"],
        skill: json["skill"],
        experience: json["experience"],
        salaryType: json["salary_type"],
        minSalary: json["min_salary"],
        maxSalary: json["max_salary"],
        vacancy: json["vacancy"],
        advertisement: json["advertisement"],
        sector: json["sector"],
        description: json["description"],
        option: json["option"],
        optionName: json["option_name"],
        optionWebsite: json["option_website"],
        optionAddress: json["option_address"],
        optionEmail: json["option_email"],
        optionPhoneNumber: json["option_phone_number"],
        isClosed: json["is_closed"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "education": education,
        "skill": skill,
        "experience": experience,
        "salary_type": salaryType,
        "min_salary": minSalary,
        "max_salary": maxSalary,
        "vacancy": vacancy,
        "advertisement": advertisement,
        "sector": sector,
        "description": description,
        "option": option,
        "option_name": optionName,
        "option_website": optionWebsite,
        "option_address": optionAddress,
        "option_email": optionEmail,
        "option_phone_number": optionPhoneNumber,
        "is_closed": isClosed,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
      };
}
