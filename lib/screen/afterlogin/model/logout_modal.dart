// To parse this JSON data, do
//
//     final logoutModal = logoutModalFromJson(jsonString);

import 'dart:convert';

LogoutModal logoutModalFromJson(String str) =>
    LogoutModal.fromJson(json.decode(str));

String logoutModalToJson(LogoutModal data) => json.encode(data.toJson());

class LogoutModal {
  LogoutModal({
    this.message,
  });

  String? message;

  factory LogoutModal.fromJson(Map<String, dynamic> json) => LogoutModal(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
