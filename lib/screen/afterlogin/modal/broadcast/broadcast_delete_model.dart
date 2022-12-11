// To parse this JSON data, do
//
//     final broadcastDeleteModel = broadcastDeleteModelFromJson(jsonString);

import 'dart:convert';

BroadcastDeleteModel broadcastDeleteModelFromJson(String str) => BroadcastDeleteModel.fromJson(json.decode(str));

String broadcastDeleteModelToJson(BroadcastDeleteModel data) => json.encode(data.toJson());

class BroadcastDeleteModel {
  BroadcastDeleteModel({
    this.id,
    this.message,
  });

  String? id;
  String? message;

  factory BroadcastDeleteModel.fromJson(Map<String, dynamic> json) => BroadcastDeleteModel(
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
      };
}
