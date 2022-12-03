// To parse this JSON data, do
//
//     final groupMemberStoreModel = groupMemberStoreModelFromJson(jsonString);

import 'dart:convert';

List<GroupMemberStoreModel> groupMemberStoreModelFromJson(String? str) =>
    List<GroupMemberStoreModel>.from(
        json.decode(str!).map((x) => GroupMemberStoreModel.fromJson(x)));

String? groupMemberStoreModelToJson(List<GroupMemberStoreModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GroupMemberStoreModel {
  GroupMemberStoreModel({
    this.id,
    this.captain,
    this.wisecaptain,
    this.isRequest,
    this.createdAt,
    this.updatedAt,
    this.group,
    this.member,
  });

  int? id;
  int? captain;
  int? wisecaptain;
  String? isRequest;
  String? createdAt;
  String? updatedAt;
  Group? group;
  Member? member;

  factory GroupMemberStoreModel.fromJson(Map<String, dynamic> json) =>
      GroupMemberStoreModel(
        id: json["id"],
        captain: json["captain"],
        wisecaptain: json["wisecaptain"],
        isRequest: json["is_request"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        group: Group.fromJson(json["group"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "captain": captain,
        "wisecaptain": wisecaptain,
        "is_request": isRequest,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "group": group!.toJson(),
        "member": member!.toJson(),
      };
}

class Group {
  Group({
    this.id,
    this.name,
    this.type,
    this.storageUrl,
    this.isTotalGroupMember,
  });

  int? id;
  String? name;
  String? type;
  String? storageUrl;
  int? isTotalGroupMember;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
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
  String? phoneNumber;
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
