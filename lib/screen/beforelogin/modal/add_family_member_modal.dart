// To parse this JSON data, do
//
//     final addFamilyMemberModal = addFamilyMemberModalFromJson(jsonString);

import 'dart:convert';

AddFamilyMemberModal addFamilyMemberModalFromJson(String str) => AddFamilyMemberModal.fromJson(json.decode(str));

String addFamilyMemberModalToJson(AddFamilyMemberModal data) => json.encode(data.toJson());

class AddFamilyMemberModal {
    AddFamilyMemberModal({
        this.id,
        this.panel,
        this.username,
        this.firstName,
        this.lastName,
        this.middleName,
        this.gender,
        this.dateOfBirth,
        this.aadhaarCardNumber,
        this.aadhaarCardFrontPhoto,
        this.aadhaarCardBackPhoto,
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
        this.nriPincode,
        this.panCardFrontPhoto,
        this.panCardBackPhoto,
        this.education,
        this.educationYear,
        this.timezone,
        this.isActive,
        this.isActiveAt,
        this.storageUrl,
        this.role,
        this.family,
    });

    int? id;
    String? panel;
    String? username;
    String? firstName;
    String? lastName;
    String? middleName;
    String? gender;
    DateTime? dateOfBirth;
    String? aadhaarCardNumber;
    String? aadhaarCardFrontPhoto;
    String? aadhaarCardBackPhoto;
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
    dynamic nriPincode;
    dynamic panCardFrontPhoto;
    dynamic panCardBackPhoto;
    dynamic education;
    dynamic educationYear;
    dynamic timezone;
    int? isActive;
    DateTime? isActiveAt;
    String? storageUrl;
    Role? role;
    List<Family>? family;

    factory AddFamilyMemberModal.fromJson(Map<String, dynamic> json) => AddFamilyMemberModal(
        id: json["id"],
        panel: json["panel"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        gender: json["gender"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        aadhaarCardNumber: json["aadhaar_card_number"],
        aadhaarCardFrontPhoto: json["aadhaar_card_front_photo"],
        aadhaarCardBackPhoto: json["aadhaar_card_back_photo"],
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
        nriPincode: json["nri_pincode"],
        panCardFrontPhoto: json["pan_card_front_photo"],
        panCardBackPhoto: json["pan_card_back_photo"],
        education: json["education"],
        educationYear: json["education_year"],
        timezone: json["timezone"],
        isActive: json["is_active"],
        isActiveAt: DateTime.parse(json["is_active_at"]),
        storageUrl: json["storage_url"],
        role: Role.fromJson(json["role"]),
        family: List<Family>.from(json["family"].map((x) => Family.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "panel": panel,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "gender": gender,
        "date_of_birth": "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "aadhaar_card_number": aadhaarCardNumber,
        "aadhaar_card_front_photo": aadhaarCardFrontPhoto,
        "aadhaar_card_back_photo": aadhaarCardBackPhoto,
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
        "nri_pincode": nriPincode,
        "pan_card_front_photo": panCardFrontPhoto,
        "pan_card_back_photo": panCardBackPhoto,
        "education": education,
        "education_year": educationYear,
        "timezone": timezone,
        "is_active": isActive,
        "is_active_at": isActiveAt!.toIso8601String(),
        "storage_url": storageUrl,
        "role": role?.toJson(),
        "family": List<dynamic>.from(family!.map((x) => x.toJson())),
    };
}

class Family {
    Family({
        this.id,
        this.addressType,
        this.isCurrentAddress,
        this.area,
        this.pincode,
        this.location,
        this.familyIdentityNumber,
        this.houseNumber,
        this.familyPhoto,
        this.description,
        this.type,
        this.isActive,
        this.isActiveAt,
        this.createdAt,
        this.updatedAt,
        this.storageUrl,
        this.country,
        this.state,
        this.district,
        this.subdistrict,
        this.village,
        this.society,
    });

    int? id;
    String? addressType;
    int? isCurrentAddress;
    String? area;
    String? pincode;
    dynamic location;
    dynamic familyIdentityNumber;
    String? houseNumber;
    dynamic familyPhoto;
    dynamic description;
    String? type;
    int? isActive;
    DateTime? isActiveAt;
    String? createdAt;
    String? updatedAt;
    String? storageUrl;
    Role? country;
    Role? state;
    Role? district;
    Role? subdistrict;
    Village? village;
    Role? society;

    factory Family.fromJson(Map<String, dynamic> json) => Family(
        id: json["id"],
        addressType: json["address_type"],
        isCurrentAddress: json["is_current_address"],
        area: json["area"],
        pincode: json["pincode"],
        location: json["location"],
        familyIdentityNumber: json["family_identity_number"],
        houseNumber: json["house_number"],
        familyPhoto: json["family_photo"],
        description: json["description"],
        type: json["type"],
        isActive: json["is_active"],
        isActiveAt: DateTime.parse(json["is_active_at"]),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        country: Role.fromJson(json["country"]),
        state: Role.fromJson(json["state"]),
        district: Role.fromJson(json["district"]),
        subdistrict: Role.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Role.fromJson(json["society"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "address_type": addressType,
        "is_current_address": isCurrentAddress,
        "area": area,
        "pincode": pincode,
        "location": location,
        "family_identity_number": familyIdentityNumber,
        "house_number": houseNumber,
        "family_photo": familyPhoto,
        "description": description,
        "type": type,
        "is_active": isActive,
        "is_active_at": isActiveAt!.toIso8601String(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
    };
}

class Role {
    Role({
        this.id,
        this.name,
    });

    int? id;
    String? name;

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class Village {
    Village({
        this.id,
        this.name,
        this.totalsociety,
    });

    int? id;
    String? name;
    int? totalsociety;

    factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        name: json["name"],
        totalsociety: json["totalsociety"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalsociety": totalsociety,
    };
}
