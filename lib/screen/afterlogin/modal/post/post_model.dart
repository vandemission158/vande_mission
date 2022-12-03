// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String? str) =>
    PostModel.fromJson(json.decode(str!));

String? postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
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
  int? total;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
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
    this.postId,
    this.businessId,
    this.postText,
    this.postLink,
    this.postLinkTitle,
    this.postLinkImage,
    this.postLinkContent,
    this.postPhoto,
    this.postVideo,
    this.postDocument,
    this.postRecord,
    this.postVimeo,
    this.postDailymotion,
    this.postFacebook,
    this.postYoutube,
    this.postVine,
    this.postSoundCloud,
    this.postPlaytube,
    this.postDeepsound,
    this.postMap,
    this.postShare,
    this.postPrivacy,
    this.postType,
    this.streamName,
    this.liveTime,
    this.liveEnded,
    this.postUrl,
    this.blur,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.totalLike,
    this.createdby,
    this.group,
    this.event,
    this.blog,
    this.job,
    this.product,
    this.offer,
    this.book,
  });

  int? id;
  int? postId;
  dynamic businessId;
  dynamic postText;
  dynamic postLink;
  dynamic postLinkTitle;
  dynamic postLinkImage;
  dynamic postLinkContent;
  dynamic postPhoto;
  dynamic postVideo;
  dynamic postDocument;
  dynamic postRecord;
  dynamic postVimeo;
  dynamic postDailymotion;
  dynamic postFacebook;
  dynamic postYoutube;
  dynamic postVine;
  dynamic postSoundCloud;
  dynamic postPlaytube;
  dynamic postDeepsound;
  dynamic postMap;
  dynamic postShare;
  int? postPrivacy;
  String? postType;
  dynamic streamName;
  dynamic liveTime;
  dynamic liveEnded;
  dynamic postUrl;
  int? blur;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  int? totalLike;
  Createdby? createdby;
  Group? group;
  dynamic event;
  dynamic blog;
  Job? job;
  Product? product;
  Offer? offer;
  Book? book;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        postId: json["post_id"],
        businessId: json["business_id"],
        postText: json["post_text"],
        postLink: json["post_link"],
        postLinkTitle: json["post_link_title"],
        postLinkImage: json["post_link_image"],
        postLinkContent: json["post_link_content"],
        postPhoto: json["post_photo"],
        postVideo: json["post_video"],
        postDocument: json["post_document"],
        postRecord: json["post_record"],
        postVimeo: json["post_vimeo"],
        postDailymotion: json["post_dailymotion"],
        postFacebook: json["post_facebook"],
        postYoutube: json["post_youtube"],
        postVine: json["post_vine"],
        postSoundCloud: json["post_sound_cloud"],
        postPlaytube: json["post_playtube"],
        postDeepsound: json["post_deepsound"],
        postMap: json["post_map"],
        postShare: json["post_share"],
        postPrivacy: json["post_privacy"],
        postType: json["post_type"],
        streamName: json["stream_name"],
        liveTime: json["live_time"],
        liveEnded: json["live_ended"],
        postUrl: json["post_url"],
        blur: json["blur"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        totalLike: json["total_like"],
        createdby: json["createdby"] == null
            ? null
            : Createdby.fromJson(json["createdby"]),
        group: json["group"] == null ? null : Group.fromJson(json["group"]),
        event: json["event"],
        blog: json["blog"],
        job: json["job"] == null ? null : Job.fromJson(json["job"]),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        offer: json["offer"] == null ? null : Offer.fromJson(json["offer"]),
        book: json["book"] == null ? null : Book.fromJson(json["book"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "post_id": postId,
        "business_id": businessId,
        "post_text": postText,
        "post_link": postLink,
        "post_link_title": postLinkTitle,
        "post_link_image": postLinkImage,
        "post_link_content": postLinkContent,
        "post_photo": postPhoto,
        "post_video": postVideo,
        "post_document": postDocument,
        "post_record": postRecord,
        "post_vimeo": postVimeo,
        "post_dailymotion": postDailymotion,
        "post_facebook": postFacebook,
        "post_youtube": postYoutube,
        "post_vine": postVine,
        "post_sound_cloud": postSoundCloud,
        "post_playtube": postPlaytube,
        "post_deepsound": postDeepsound,
        "post_map": postMap,
        "post_share": postShare,
        "post_privacy": postPrivacy,
        "post_type": postType,
        "stream_name": streamName,
        "live_time": liveTime,
        "live_ended": liveEnded,
        "post_url": postUrl,
        "blur": blur,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "total_like": totalLike,
        "createdby": createdby == null ? null : createdby!.toJson(),
        "group": group == null ? null : group!.toJson(),
        "event": event,
        "blog": blog,
        "job": job == null ? null : job!.toJson(),
        "product": product == null ? null : product!.toJson(),
        "offer": offer == null ? null : offer!.toJson(),
        "book": book == null ? null : book!.toJson(),
      };
}

class Book {
  Book({
    this.id,
    this.title,
    this.edition,
    this.bookPdf,
    this.priceType,
    this.price,
    this.website,
    this.language,
    this.publisherType,
    this.publishingDate,
    this.isCreateChapter,
    this.isTotalChapter,
    this.storageUrl,
    this.typeofcategory,
  });

  int? id;
  String? title;
  int? edition;
  dynamic bookPdf;
  String? priceType;
  dynamic price;
  dynamic website;
  String? language;
  String? publisherType;
  DateTime? publishingDate;
  int? isCreateChapter;
  int? isTotalChapter;
  String? storageUrl;
  Typeofcategory? typeofcategory;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        title: json["title"],
        edition: json["edition"],
        bookPdf: json["book_pdf"],
        priceType: json["price_type"],
        price: json["price"],
        website: json["website"],
        language: json["language"],
        publisherType: json["publisher_type"],
        publishingDate: DateTime.parse(json["publishing_date"]),
        isCreateChapter: json["isCreateChapter"],
        isTotalChapter: json["isTotalChapter"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "edition": edition,
        "book_pdf": bookPdf,
        "price_type": priceType,
        "price": price,
        "website": website,
        "language": language,
        "publisher_type": publisherType,
        "publishing_date":
            "${publishingDate!.year.toString().padLeft(4, '0')}-${publishingDate!.month.toString().padLeft(2, '0')}-${publishingDate!.day.toString().padLeft(2, '0')}",
        "isCreateChapter": isCreateChapter,
        "isTotalChapter": isTotalChapter,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
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
        middleName: json["middle_name"] == null ? null : json["middle_name"],
        lastName: json["last_name"],
        phoneNumber: json["phone_number"],
        storageUrl: json["storage_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName == null ? null : middleName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "storage_url": storageUrl,
      };
}

class Group {
  Group({
    this.id,
    this.division,
    this.name,
    this.photo,
    this.about,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.storageUrl,
    this.isTotalGroupMember,
    this.typeofcategory,
    this.country,
    this.state,
    this.district,
    this.subdistrict,
    this.village,
    this.society,
    this.createdby,
  });

  int? id;
  String? division;
  String? name;
  String? photo;
  String? about;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? storageUrl;
  int? isTotalGroupMember;
  Typeofcategory? typeofcategory;
  Country? country;
  Country? state;
  Country? district;
  Country? subdistrict;
  Village? village;
  Country? society;
  Createdby? createdby;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        division: json["division"],
        name: json["name"],
        photo: json["photo"],
        about: json["about"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        storageUrl: json["storage_url"],
        isTotalGroupMember: json["isTotalGroupMember"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
        country: Country.fromJson(json["country"]),
        state: Country.fromJson(json["state"]),
        district: Country.fromJson(json["district"]),
        subdistrict: Country.fromJson(json["subdistrict"]),
        village: Village.fromJson(json["village"]),
        society: Country.fromJson(json["society"]),
        createdby: Createdby.fromJson(json["createdby"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "division": division,
        "name": name,
        "photo": photo,
        "about": about,
        "type": type,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "storage_url": storageUrl,
        "isTotalGroupMember": isTotalGroupMember,
        "typeofcategory": typeofcategory!.toJson(),
        "country": country!.toJson(),
        "state": state!.toJson(),
        "district": district!.toJson(),
        "subdistrict": subdistrict!.toJson(),
        "village": village!.toJson(),
        "society": society!.toJson(),
        "createdby": createdby!.toJson(),
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

class Job {
  Job({
    this.id,
    this.title,
    this.type,
    this.education,
    this.experience,
    this.option,
    this.optionName,
    this.optionWebsite,
    this.optionAddress,
    this.optionEmail,
    this.optionPhoneNumber,
    this.isClosed,
    this.storageUrl,
    this.typeofcategory,
  });

  int? id;
  String? title;
  String? type;
  String? education;
  String? experience;
  String? option;
  String? optionName;
  dynamic optionWebsite;
  String? optionAddress;
  String? optionEmail;
  String? optionPhoneNumber;
  int? isClosed;
  String? storageUrl;
  Typeofcategory? typeofcategory;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        education: json["education"],
        experience: json["experience"],
        option: json["option"],
        optionName: json["option_name"],
        optionWebsite: json["option_website"],
        optionAddress: json["option_address"],
        optionEmail: json["option_email"],
        optionPhoneNumber: json["option_phone_number"],
        isClosed: json["is_closed"],
        storageUrl: json["storage_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "education": education,
        "experience": experience,
        "option": option,
        "option_name": optionName,
        "option_website": optionWebsite,
        "option_address": optionAddress,
        "option_email": optionEmail,
        "option_phone_number": optionPhoneNumber,
        "is_closed": isClosed,
        "storage_url": storageUrl,
        "typeofcategory": typeofcategory!.toJson(),
      };
}

class Offer {
  Offer({
    this.id,
    this.title,
    this.description,
    this.image,
    this.video,
    this.startDate,
    this.endDate,
    this.promocode,
  });

  int? id;
  String? title;
  String? description;
  List<Image>? image;
  dynamic video;
  DateTime? startDate;
  DateTime? endDate;
  dynamic promocode;

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        video: json["video"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        promocode: json["promocode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "video": video,
        "start_date": startDate!.toIso8601String(),
        "end_date": endDate!.toIso8601String(),
        "promocode": promocode,
      };
}

class Image {
  Image({
    this.imageName,
    this.imagePath,
  });

  String? imageName;
  String? imagePath;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageName: json["image_name"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "image_name": imageName,
        "image_path": imagePath,
      };
}

class Product {
  Product({
    this.id,
    this.type,
    this.name,
    this.image,
    this.video,
    this.price,
    this.maxRetailPrice,
    this.productType,
    this.propertyType,
    this.area,
    this.pincode,
    this.address,
    this.isSale,
    this.imageUrl,
    this.videoUrl,
    this.typeofcategory,
  });

  int? id;
  String? type;
  String? name;
  List<String>? image;
  dynamic video;
  String? price;
  String? maxRetailPrice;
  String? productType;
  dynamic propertyType;
  dynamic area;
  dynamic pincode;
  dynamic address;
  int? isSale;
  List<String>? imageUrl;
  dynamic videoUrl;
  Typeofcategory? typeofcategory;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        image: List<String>.from(json["image"].map((x) => x)),
        video: json["video"],
        price: json["price"],
        maxRetailPrice: json["max_retail_price"],
        productType: json["product_type"],
        propertyType: json["property_type"],
        area: json["area"],
        pincode: json["pincode"],
        address: json["address"],
        isSale: json["is_sale"],
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        videoUrl: json["video_url"],
        typeofcategory: Typeofcategory.fromJson(json["typeofcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "image": List<dynamic>.from(image!.map((x) => x)),
        "video": video,
        "price": price,
        "max_retail_price": maxRetailPrice,
        "product_type": productType,
        "property_type": propertyType,
        "area": area,
        "pincode": pincode,
        "address": address,
        "is_sale": isSale,
        "image_url": List<dynamic>.from(imageUrl!.map((x) => x)),
        "video_url": videoUrl,
        "typeofcategory": typeofcategory!.toJson(),
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
