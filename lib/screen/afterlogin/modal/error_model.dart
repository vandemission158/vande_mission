// To parse this JSON data, do
//
//     final errorModal = errorModalFromJson(jsonString);

import 'dart:convert';

ErrorModal errorModalFromJson(String str) =>
    ErrorModal.fromJson(json.decode(str));

String errorModalToJson(ErrorModal data) => json.encode(data.toJson());

class ErrorModal {
  ErrorModal(this.statusCode, this.statusMessage, this.data);

  int? statusCode;
  String? statusMessage;
  Object? data;

  factory ErrorModal.fromJson(Map<String, dynamic> json) => ErrorModal(
        json['status_code'] as int,
        json['status_message'] as String,
        json['data'] as Object,
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "statusMessage": statusMessage,
        "data": data,
      };
}
