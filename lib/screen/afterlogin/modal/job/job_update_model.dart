// To parse this JSON data, do
//
//     final jobUpdateModel = jobUpdateModelFromJson(jsonString);

import 'dart:convert';

JobUpdateModel jobUpdateModelFromJson(String? str) =>
    JobUpdateModel.fromJson(json.decode(str!));

String? jobUpdateModelToJson(JobUpdateModel data) => json.encode(data.toJson());

class JobUpdateModel {
  JobUpdateModel({
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

  factory JobUpdateModel.fromJson(Map<String, dynamic> json) => JobUpdateModel(
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
