// To parse this JSON data, do
//
//     final stateModal2 = stateModal2FromJson(jsonString);

import 'dart:convert';

List<StateModal2> stateModal2FromJson(String str) => List<StateModal2>.from(json.decode(str).map((x) => StateModal2.fromJson(x)));

String stateModal2ToJson(List<StateModal2> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StateModal2 {
    StateModal2({
        this.id,
        this.name,
        this.country,
    });

    int? id;
    String? name;
    Country? country;

    factory StateModal2.fromJson(Map<String, dynamic> json) => StateModal2(
        id: json["id"],
        name: json["name"],
        country: Country.fromJson(json["country"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country": country!.toJson(),
    };
}

class Country {
    Country({
        this.id,
        this.name,
    });

    int? id;
    Name? name;

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        name: nameValues.map![json["name"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse![name],
    };
}

enum Name { INDIA }

final nameValues = EnumValues({
    "India": Name.INDIA
});

class EnumValues<T> {
    Map<String, T>? map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        reverseMap ??= map!.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
