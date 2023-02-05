// To parse this JSON data, do
//
//     final jobInterestStoreModel = jobInterestStoreModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/relation_model/job/job.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/member.dart';

JobInterestStoreModel jobInterestStoreModelFromJson(String? str) => JobInterestStoreModel.fromJson(json.decode(str!));

String? jobInterestStoreModelToJson(JobInterestStoreModel data) => json.encode(data.toJson());

class JobInterestStoreModel {
  JobInterestStoreModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.job,
    this.member,
  });

  int? id;
  String? createdAt;
  String? updatedAt;
  Job? job;
  Member? member;

  factory JobInterestStoreModel.fromJson(Map<String, dynamic> json) => JobInterestStoreModel(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        job: Job.fromJson(json["job"]),
        member: Member.fromJson(json["member"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "job": job!.toJson(),
        "member": member!.toJson(),
      };
}
