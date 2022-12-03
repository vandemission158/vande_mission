// To parse this JSON data, do
//
//     final jobModel = jobModelFromJson(jsonString);

import 'dart:convert';

JobModel jobModelFromJson(String? str) => JobModel.fromJson(json.decode(str!));

String? jobModelToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
  JobModel({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}
