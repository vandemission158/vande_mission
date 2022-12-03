// To parse this JSON data, do
//
//     final eventModel = eventModelFromJson(jsonString);

import 'dart:convert';

EventModel eventModelFromJson(String? str) =>
    EventModel.fromJson(json.decode(str!));

String? eventModelToJson(EventModel data) => json.encode(data.toJson());

class EventModel {
  EventModel({
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

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
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
    this.countryId,
    this.stateId,
    this.districtId,
    this.subdistrictId,
    this.villageId,
    this.societyId,
    this.area,
    this.organiserPhoneNumber,
    this.title,
    this.datetype,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.allowEndDate,
    this.location,
    this.notes,
    this.organiser,
    this.eventInvitationType,
    this.createdAt,
    this.updatedAt,
    this.typeofcategory,
    this.createdby,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.eventOrganiser,
  });

  int? id;
  int? countryId;
  int? stateId;
  int? districtId;
  int? subdistrictId;
  int? villageId;
  int? societyId;
  String? area;
  List<String>? organiserPhoneNumber;
  String? title;
  String? datetype;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;
  int? allowEndDate;
  String? location;
  dynamic notes;
  String? organiser;
  dynamic eventInvitationType;
  String? createdAt;
  String? updatedAt;
  Typeofcategory? typeofcategory;
  Createdby? createdby;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  Country? society;
  List<dynamic>? eventOrganiser;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        districtId: json["district_id"],
        subdistrictId: json["subdistrict_id"],
        villageId: json["village_id"],
        societyId: json["society_id"],
        area: json["area"],
        organiserPhoneNumber:
            List<String>.from(json["organiser_phone_number"].map((x) => x)),
        title: json["title"],
        datetype: json["datetype"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        allowEndDate: json["allow_end_date"],
        location: json["location"],
        notes: json["notes"],
        organiser: json["organiser"],
        eventInvitationType: json["event_invitation_type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        createdby: Createdby.fromJson(json["createdby"]),
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Country.fromJson(json["society"]),
        eventOrganiser:
            List<dynamic>.from(json["event_organiser"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_id": countryId,
        "state_id": stateId,
        "district_id": districtId,
        "subdistrict_id": subdistrictId,
        "village_id": villageId,
        "society_id": societyId,
        "area": area,
        "organiser_phone_number":
            List<dynamic>.from(organiserPhoneNumber!.map((x) => x)),
        "title": title,
        "datetype": datetype,
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "start_time": startTime,
        "end_time": endTime,
        "allow_end_date": allowEndDate,
        "location": location,
        "notes": notes,
        "organiser": organiser,
        "event_invitation_type": eventInvitationType,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "typeofcategory": typeofcategory!.toJson(),
        "createdby": createdby!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "event_organiser": List<dynamic>.from(eventOrganiser!.map((x) => x)),
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

class Createdby {
  Createdby({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.phoneNumber,
    this.storageUrl,
  });

  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? phoneNumber;
  String? storageUrl;

  factory Createdby.fromJson(Map<String, dynamic> json) => Createdby(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}

class Typeofcategory {
  Typeofcategory({
    this.id,
    this.type,
    this.category,
  });

  int? id;
  String? type;
  Category? category;

  factory Typeofcategory.fromJson(Map<String, dynamic> json) => Typeofcategory(
        id: json["id"],
        type: json["type"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "category": category!.toJson(),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.parent,
  });

  int? id;
  String? name;
  dynamic parent;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        parent: json["parent"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent": parent,
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
