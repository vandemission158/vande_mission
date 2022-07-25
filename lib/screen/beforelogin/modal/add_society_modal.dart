// To parse this JSON data, do
//
//     final addSocietyModal = addSocietyModalFromJson(jsonString);

import 'dart:convert';

AddSocietyModal addSocietyModalFromJson(String str) => AddSocietyModal.fromJson(json.decode(str));

String addSocietyModalToJson(AddSocietyModal data) => json.encode(data.toJson());

class AddSocietyModal {
    AddSocietyModal({
        this.id,
        this.name,
        this.logo,
        this.type,
        this.headquarters,
        this.chairman,
        this.country,
        this.state,
        this.district,
        this.subdistrict,
        this.village,
        this.religion,
    });

    int? id;
    String? name;
    dynamic logo;
    String? type;
    dynamic headquarters;
    dynamic chairman;
    Country? country;
    Country? state;
    Country? district;
    Country? subdistrict;
    Village? village;
    Country? religion;

    factory AddSocietyModal.fromJson(Map<String, dynamic> json) => AddSocietyModal(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        type: json["type"],
        headquarters: json["headquarters"],
        chairman: json["chairman"],
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        religion: Country.fromJson(json["religion"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
        "type": type,
        "headquarters": headquarters,
        "chairman": chairman,
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "religion": religion!.toJson(),
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
