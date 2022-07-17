// To parse this JSON data, do
//
//     final stateModal = stateModalFromJson(jsonString);

import 'dart:convert';

StateModal stateModalFromJson(String str) => StateModal.fromJson(json.decode(str));

String stateModalToJson(StateModal data) => json.encode(data.toJson());

class StateModal {
    StateModal({
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
    String? nextPageUrl;
    String? path;
    int? perPage;
    dynamic prevPageUrl;
    int? to;
    int ?total;

    factory StateModal.fromJson(Map<String, dynamic> json) => StateModal(
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
        this.name,
        this.country,
    });

    int? id;
    String? name;
    Country? country;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
    };
}

class EnumValues<T> {
    Map<String, T>? map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        reverseMap ??= map!.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
