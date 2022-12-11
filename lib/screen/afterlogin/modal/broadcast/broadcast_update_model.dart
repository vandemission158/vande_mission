// To parse this JSON data, do
//
//     final broadcastUpdateModel = broadcastUpdateModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BroadcastUpdateModel broadcastUpdateModelFromJson(String? str) => BroadcastUpdateModel.fromJson(json.decode(str!));

String? broadcastUpdateModelToJson(BroadcastUpdateModel data) => json.encode(data.toJson());

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

  factory BroadcastUpdateModel.fromJson(Map<String, dynamic> json) => BroadcastUpdateModel(
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
