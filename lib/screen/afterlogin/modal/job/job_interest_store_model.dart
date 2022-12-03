// To parse this JSON data, do
//
//     final jobInterestStoreModel = jobInterestStoreModelFromJson(jsonString);

import 'dart:convert';

JobInterestStoreModel jobInterestStoreModelFromJson(String? str) =>
    JobInterestStoreModel.fromJson(json.decode(str!));

String? jobInterestStoreModelToJson(JobInterestStoreModel data) =>
    json.encode(data.toJson());

class JobInterestStoreModel {
  JobInterestStoreModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.job,
    this.member,
  });

  int? id;
  String? createdAt;
  String? updatedAt;
  Job? job;
  Member? member;

  factory JobInterestStoreModel.fromJson(Map<String, dynamic> json) =>
      JobInterestStoreModel(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        job: Job.fromJson(json["job"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "job": job!.toJson(),
        "member": member!.toJson(),
      };
}

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
  Member? createdby;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["id"],
        title: json["title"],
        option: json["option"],
        optionName: json["option_name"],
        optionAddress: json["option_address"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Member.fromJson(json["createdby"]),
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
