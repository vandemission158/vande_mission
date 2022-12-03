// To parse this JSON data, do
//
//     final broadcastUpdateModel = broadcastUpdateModelFromJson(jsonString);

import 'dart:convert';

BroadcastUpdateModel broadcastUpdateModelFromJson(String? str) =>
    BroadcastUpdateModel.fromJson(json.decode(str!));

String? broadcastUpdateModelToJson(BroadcastUpdateModel data) =>
    json.encode(data.toJson());

class BroadcastUpdateModel {
  BroadcastUpdateModel({
    this.title,
    this.message,
    this.photo,
    this.broadcastType,
    this.isShow,
    this.storageUrl,
    this.createdby,
  });

  String? title;
  String? message;
  dynamic photo;
  String? broadcastType;
  int? isShow;
  String? storageUrl;
  Createdby? createdby;

  factory BroadcastUpdateModel.fromJson(Map<String, dynamic> json) =>
      BroadcastUpdateModel(
        title: json["title"],
        message: json["message"],
        photo: json["photo"],
        broadcastType: json["broadcast_type"],
        isShow: json["is_show"],
        storageUrl: json["storage_url"],
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "message": message,
        "photo": photo,
        "broadcast_type": broadcastType,
        "is_show": isShow,
        "storage_url": storageUrl,
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