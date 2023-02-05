// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

import 'package:vande_mission/screen/afterlogin/modal/pagination/link.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/user/createdby.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/group.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/job.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/product.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/offer.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/book.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/event.dart';
import 'package:vande_mission/screen/afterlogin/relation_model/post/blog.dart';

PostModel postModelFromJson(String? str) => PostModel.fromJson(json.decode(str!));

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
  Event? event;
  Blog? blog;
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
        createdby: json["createdby"] == null ? null : Createdby.fromJson(json["createdby"]),
        group: json["group"] == null ? null : Group.fromJson(json["group"]),
        event: json["event"] == null ? null : Event.fromJson(json["event"]),
        blog: json["blog"] == null ? null : Blog.fromJson(json["blog"]),
        job: json["job"] == null ? null : Job.fromJson(json["job"]),
        product: json["product"] == null ? null : Product.fromJson(json["product"]),
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
        "event": event == null ? null : event!.toJson(),
        "blog": blog == null ? null : blog!.toJson(),
        "job": job == null ? null : job!.toJson(),
        "product": product == null ? null : product!.toJson(),
        "offer": offer == null ? null : offer!.toJson(),
        "book": book == null ? null : book!.toJson(),
      };
}
