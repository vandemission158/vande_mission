// To parse this JSON data, do
//
//     final offerStoreModel = offerStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/category/typeofcategory.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/image/image.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

OfferStoreModel offerStoreModelFromJson(String? str) => OfferStoreModel.fromJson(json.decode(str!));

String? offerStoreModelToJson(OfferStoreModel data) => json.encode(data.toJson());

class OfferStoreModel {
  OfferStoreModel({
    this.id,
    this.title,
    this.description,
    this.image,
    this.video,
    this.startDate,
    this.endDate,
    this.promocode,
    this.typeofcategory,
    this.createdby,
  });

  int? id;
  String? title;
  String? description;
  List<Image>? image;
  dynamic video;
  DateTime? startDate;
  DateTime? endDate;
  dynamic promocode;
  Typeofcategory? typeofcategory;
  Createdby? createdby;

  factory OfferStoreModel.fromJson(Map<String, dynamic> json) => OfferStoreModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: json["video"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        promocode: json["promocode"],
        typeofcategory: json["typeofcategory"] == null ? null : Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": video,
        "start_date": startDate!.toIso8601String(),
        "end_date": endDate!.toIso8601String(),
        "promocode": promocode,
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

class Image {
  Image({
    this.imageName,
    this.imagePath,
  });

  String? imageName;
  String? imagePath;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageName: json["image_name"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "image_name": imageName,
        "image_path": imagePath,
      };
}
