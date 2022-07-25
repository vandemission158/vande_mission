// To parse this JSON data, do
//
//     final addFamilyModal = addFamilyModalFromJson(jsonString);

import 'dart:convert';

AddFamilyModal addFamilyModalFromJson(String str) => AddFamilyModal.fromJson(json.decode(str));

String addFamilyModalToJson(AddFamilyModal data) => json.encode(data.toJson());

class AddFamilyModal {
    AddFamilyModal({
        this.id,
        this.addressType,
        this.area,
        this.pincode,
        this.isCurrentAddress,
        this.familyIdentityNumber,
        this.houseNumber,
        this.type,
        this.storageUrl,
        this.country,
        this.state,
        this.district,
        this.subdistrict,
        this.village,
        this.society,
        this.owner,
        this.otherAddress,
        this.mainmember,
    });

    int? id;
    String? addressType;
    String? area;
    String? pincode;
    int? isCurrentAddress;
    dynamic familyIdentityNumber;
    String? houseNumber;
    String? type;
    String? storageUrl;
    Country? country;
    Country? state;
    Country? district;
    Country? subdistrict;
    Village? village;
    Country? society;
    dynamic owner;
    List<dynamic>? otherAddress;
    List<dynamic>? mainmember;

    factory AddFamilyModal.fromJson(Map<String, dynamic> json) => AddFamilyModal(
        id: json["id"],
        addressType: json["address_type"],
        area: json["area"],
        pincode: json["pincode"],
        isCurrentAddress: json["is_current_address"],
        familyIdentityNumber: json["family_identity_number"],
        houseNumber: json["house_number"],
        type: json["type"],
        storageUrl: json["storage_url"],
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Country.fromJson(json["society"]),
        owner: json["owner"],
        otherAddress: List<dynamic>.from(json["other_address"].map((x) => x)),
        mainmember: List<dynamic>.from(json["mainmember"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "address_type": addressType,
        "area": area,
        "pincode": pincode,
        "is_current_address": isCurrentAddress,
        "family_identity_number": familyIdentityNumber,
        "house_number": houseNumber,
        "type": type,
        "storage_url": storageUrl,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "owner": owner,
        "other_address": List<dynamic>.from(otherAddress!.map((x) => x)),
        "mainmember": List<dynamic>.from(mainmember!.map((x) => x)),
    };
}

class Country {
    Country({
        this.id,
        this.name,
    });

    int? id;
    String? name;

    factory Country.fromJson(Map<String, dynamic> json) => Country(
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
