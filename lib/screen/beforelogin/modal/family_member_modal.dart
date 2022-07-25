// To parse this JSON data, do
//
//     final familyMemberModal = familyMemberModalFromJson(jsonString);

import 'dart:convert';

FamilyMemberModal familyMemberModalFromJson(String str) => FamilyMemberModal.fromJson(json.decode(str));

String familyMemberModalToJson(FamilyMemberModal data) => json.encode(data.toJson());

class FamilyMemberModal {
    FamilyMemberModal({
        this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total,
    });

    int? currentPage;
    List<Datum>? data;
    String? firstPageUrl;
    int? from;
    int? lastPage;
    String? lastPageUrl;
    List<Link>? links;
    dynamic nextPageUrl;
    String? path;
    int? perPage;
    dynamic prevPageUrl;
    int? to;
    int? total;

    factory FamilyMemberModal.fromJson(Map<String, dynamic> json) => FamilyMemberModal(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class Datum {
    Datum({
        this.id,
        this.mainPerson,
        this.member,
    });

    int? id;
    int? mainPerson;
    Member? member;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        mainPerson: json["main_person"],
        member: Member.fromJson(json["member"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "main_person": mainPerson,
        "member": member!.toJson(),
    };
}

class Member {
    Member({
        this.id,
        this.panel,
        this.username,
        this.firstName,
        this.lastName,
        this.middleName,
        this.motherName,
        this.gender,
        this.dateOfBirth,
        this.aadhaarCardNumber,
        this.aadhaarCardFrontPhoto,
        this.aadhaarCardBackPhoto,
        this.skipPhoneNumber,
        this.phoneNumber,
        this.phoneNumberOtp,
        this.phoneNumberVerified,
        this.phoneNumberVerifiedAt,
        this.email,
        this.emailOtp,
        this.emailVerified,
        this.emailVerifiedAt,
        this.profilePhoto,
        this.nri,
        this.nriAddress,
        this.nriLatitude,
        this.nriLongitude,
        this.nriPincode,
        this.panCardFrontPhoto,
        this.panCardBackPhoto,
        this.education,
        this.educationYear,
        this.timezone,
        this.localization,
        this.balance,
        this.wallet,
        this.credits,
        this.ipAddress,
        this.serverInfo,
        this.isPro,
        this.isProAt,
        this.isProType,
        this.isPrivateAccount,
        this.isPostPrivacy,
        this.isPhonePrivacy,
        this.isBirthPrivacy,
        this.notificationMentioned,
        this.notification,
        this.notificationSound,
        this.banned,
        this.bannedReason,
        this.isActive,
        this.isActiveAt,
        this.createdAt,
        this.updatedAt,
        this.storageUrl,
    });

    int? id;
    String? panel;
    String? username;
    String? firstName;
    String? lastName;
    String? middleName;
    String? motherName;
    String? gender;
    DateTime? dateOfBirth;
    String? aadhaarCardNumber;
    String? aadhaarCardFrontPhoto;
    String? aadhaarCardBackPhoto;
    int? skipPhoneNumber;
    String? phoneNumber;
    String? phoneNumberOtp;
    int? phoneNumberVerified;
    DateTime? phoneNumberVerifiedAt;
    dynamic email;
    dynamic emailOtp;
    int? emailVerified;
    dynamic emailVerifiedAt;
    dynamic profilePhoto;
    int? nri;
    dynamic nriAddress;
    dynamic nriLatitude;
    dynamic nriLongitude;
    dynamic nriPincode;
    dynamic panCardFrontPhoto;
    dynamic panCardBackPhoto;
    dynamic education;
    dynamic educationYear;
    dynamic timezone;
    dynamic localization;
    dynamic balance;
    dynamic wallet;
    dynamic credits;
    dynamic ipAddress;
    dynamic serverInfo;
    int? isPro;
    dynamic isProAt;
    dynamic isProType;
    int? isPrivateAccount;
    int? isPostPrivacy;
    int? isPhonePrivacy;
    int? isBirthPrivacy;
    int? notificationMentioned;
    int? notification;
    int? notificationSound;
    int? banned;
    dynamic bannedReason;
    int? isActive;
    DateTime? isActiveAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? storageUrl;

    factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        panel: json["panel"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        motherName: json["mother_name"] == null ? null : json["mother_name"],
        gender: json["gender"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        aadhaarCardNumber: json["aadhaar_card_number"],
        aadhaarCardFrontPhoto: json["aadhaar_card_front_photo"],
        aadhaarCardBackPhoto: json["aadhaar_card_back_photo"],
        skipPhoneNumber: json["skip_phone_number"],
        phoneNumber: json["phone_number"],
        phoneNumberOtp: json["phone_number_otp"],
        phoneNumberVerified: json["phone_number_verified"],
        phoneNumberVerifiedAt: DateTime.parse(json["phone_number_verified_at"]),
        email: json["email"],
        emailOtp: json["email_otp"],
        emailVerified: json["email_verified"],
        emailVerifiedAt: json["email_verified_at"],
        profilePhoto: json["profile_photo"],
        nri: json["nri"],
        nriAddress: json["nri_address"],
        nriLatitude: json["nri_latitude"],
        nriLongitude: json["nri_longitude"],
        nriPincode: json["nri_pincode"],
        panCardFrontPhoto: json["pan_card_front_photo"],
        panCardBackPhoto: json["pan_card_back_photo"],
        education: json["education"],
        educationYear: json["education_year"],
        timezone: json["timezone"],
        localization: json["localization"],
        balance: json["balance"],
        wallet: json["wallet"],
        credits: json["credits"],
        ipAddress: json["ip_address"],
        serverInfo: json["server_info"],
        isPro: json["is_pro"],
        isProAt: json["is_pro_at"],
        isProType: json["is_pro_type"],
        isPrivateAccount: json["is_private_account"],
        isPostPrivacy: json["is_post_privacy"],
        isPhonePrivacy: json["is_phone_privacy"],
        isBirthPrivacy: json["is_birth_privacy"],
        notificationMentioned: json["notification_mentioned"],
        notification: json["notification"],
        notificationSound: json["notification_sound"],
        banned: json["banned"],
        bannedReason: json["banned_reason"],
        isActive: json["is_active"],
        isActiveAt: DateTime.parse(json["is_active_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        storageUrl: json["storage_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "panel": panel,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "mother_name": motherName == null ? null : motherName,
        "gender": gender,
        "date_of_birth": "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "aadhaar_card_number": aadhaarCardNumber,
        "aadhaar_card_front_photo": aadhaarCardFrontPhoto,
        "aadhaar_card_back_photo": aadhaarCardBackPhoto,
        "skip_phone_number": skipPhoneNumber,
        "phone_number": phoneNumber,
        "phone_number_otp": phoneNumberOtp,
        "phone_number_verified": phoneNumberVerified,
        "phone_number_verified_at": phoneNumberVerifiedAt!.toIso8601String(),
        "email": email,
        "email_otp": emailOtp,
        "email_verified": emailVerified,
        "email_verified_at": emailVerifiedAt,
        "profile_photo": profilePhoto,
        "nri": nri,
        "nri_address": nriAddress,
        "nri_latitude": nriLatitude,
        "nri_longitude": nriLongitude,
        "nri_pincode": nriPincode,
        "pan_card_front_photo": panCardFrontPhoto,
        "pan_card_back_photo": panCardBackPhoto,
        "education": education,
        "education_year": educationYear,
        "timezone": timezone,
        "localization": localization,
        "balance": balance,
        "wallet": wallet,
        "credits": credits,
        "ip_address": ipAddress,
        "server_info": serverInfo,
        "is_pro": isPro,
        "is_pro_at": isProAt,
        "is_pro_type": isProType,
        "is_private_account": isPrivateAccount,
        "is_post_privacy": isPostPrivacy,
        "is_phone_privacy": isPhonePrivacy,
        "is_birth_privacy": isBirthPrivacy,
        "notification_mentioned": notificationMentioned,
        "notification": notification,
        "notification_sound": notificationSound,
        "banned": banned,
        "banned_reason": bannedReason,
        "is_active": isActive,
        "is_active_at": isActiveAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "storage_url": storageUrl,
    };
}

class Link {
    Link({
        this.url,
        this.label,
        this.active,
    });

    String? url;
    String? label;
    bool? active;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
    };
}
