// To parse this JSON data, do
//
//     final loginModal = loginModalFromJson(jsonString);

import 'dart:convert';

LoginModal loginModalFromJson(String str) => LoginModal.fromJson(json.decode(str));

String loginModalToJson(LoginModal data) => json.encode(data.toJson());

class LoginModal {
    LoginModal({
        this.token,
        this.authKey,
        this.id,
    });

    String? token;
    String? authKey;
    int? id;

    factory LoginModal.fromJson(Map<String, dynamic> json) => LoginModal(
        token: json["token"],
        authKey: json["auth_key"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "auth_key": authKey,
        "id": id,
    };
}
