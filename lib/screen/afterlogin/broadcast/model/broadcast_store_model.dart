// To parse this JSON data, do
//
//     final broadcastStoreModel = broadcastStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';

BroadcastStoreModel broadcastStoreModelFromJson(String? str) => BroadcastStoreModel.fromJson(json.decode(str!));

String? broadcastStoreModelToJson(BroadcastStoreModel data) => json.encode(data.toJson());

class BroadcastStoreModel {
  BroadcastStoreModel({
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

  factory BroadcastStoreModel.fromJson(Map<String, dynamic> json) => BroadcastStoreModel(
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
