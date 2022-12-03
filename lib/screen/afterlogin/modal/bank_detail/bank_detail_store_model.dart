// To parse this JSON data, do
//
//     final bankDetailStoreModel = bankDetailStoreModelFromJson(jsonString);

import 'dart:convert';

BankDetailStoreModel bankDetailStoreModelFromJson(String? str) =>
    BankDetailStoreModel.fromJson(json.decode(str!));

String? bankDetailStoreModelToJson(BankDetailStoreModel data) =>
    json.encode(data.toJson());

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

  factory BankDetailStoreModel.fromJson(Map<String, dynamic> json) =>
      BankDetailStoreModel(
        id: json["id"],
        memberId: json["member_id"],
        bankName: json["bank_name"],
        bankAccountNumber: json["bank_account_number"],
        bankIfscCode: json["bank_ifsc_code"],
        isDefault: json["is_default"],
        member: Member.fromJson(json["member"]),
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
  dynamic phoneNumber;
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
