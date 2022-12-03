// To parse this JSON data, do
//
//     final postStoreModel = postStoreModelFromJson(jsonString);

import 'dart:convert';

PostStoreModel postStoreModelFromJson(String? str) =>
    PostStoreModel.fromJson(json.decode(str!));

String? postStoreModelToJson(PostStoreModel data) => json.encode(data.toJson());

class PostStoreModel {
  PostStoreModel({
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
  String? postText;
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
  dynamic group;
  dynamic event;
  dynamic blog;
  dynamic job;
  dynamic product;
  dynamic offer;
  dynamic book;

  factory PostStoreModel.fromJson(Map<String, dynamic> json) => PostStoreModel(
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
        createdby: Createdby.fromJson(json["createdby"]),
        group: json["group"],
        event: json["event"],
        blog: json["blog"],
        job: json["job"],
        product: json["product"],
        offer: json["offer"],
        book: json["book"],
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
        "createdby": createdby!.toJson(),
        "group": group,
        "event": event,
        "blog": blog,
        "job": job,
        "product": product,
        "offer": offer,
        "book": book,
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
