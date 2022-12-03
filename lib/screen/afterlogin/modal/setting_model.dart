// To parse this JSON data, do
//
//     final setting = settingFromJson(jsonString);

import 'dart:convert';

SettingModel settingFromJson(String str) =>
    SettingModel.fromJson(json.decode(str));

String settingToJson(SettingModel data) => json.encode(data.toJson());

class SettingModel {
  SettingModel({
    this.siteName,
  });

  String? siteName;

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        siteName: json["site_name"],
      );

  Map<String, dynamic> toJson() => {
        "site_name": siteName,
      };
}
