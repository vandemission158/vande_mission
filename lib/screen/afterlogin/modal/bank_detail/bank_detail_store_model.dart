// To parse this JSON data, do
//
//     final bankDetailStoreModel = bankDetailStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

BankDetailStoreModel bankDetailStoreModelFromJson(String? str) => BankDetailStoreModel.fromJson(json.decode(str!));

String? bankDetailStoreModelToJson(BankDetailStoreModel data) => json.encode(data.toJson());

class BankDetailStoreModel {
  BankDetailStoreModel({
    this.id,
    this.memberId,
    this.bankName,
    this.bankAccountNumber,
    this.bankIfscCode,
    this.isDefault,
    this.member,
  });

  int? id;
  int? memberId;
  String? bankName;
  String? bankAccountNumber;
  String? bankIfscCode;
  int? isDefault;
  Member? member;

  factory BankDetailStoreModel.fromJson(Map<String, dynamic> json) => BankDetailStoreModel(
        id: json["id"],
        memberId: json["member_id"],
        bankName: json["bank_name"],
        bankAccountNumber: json["bank_account_number"],
        bankIfscCode: json["bank_ifsc_code"],
        isDefault: json["is_default"],
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "member_id": memberId,
        "bank_name": bankName,
        "bank_account_number": bankAccountNumber,
        "bank_ifsc_code": bankIfscCode,
        "is_default": isDefault,
        "member": member!.toJson(),
      };
}
