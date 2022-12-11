// To parse this JSON data, do
//
//     final video = videoFromJson(jsonString);

import 'dart:convert';

Video videoFromJson(String? str) => Video.fromJson(json.decode(str!));

String videoToJson(Video data) => json.encode(data.toJson());

class Video {
  Video({
    this.videoName,
    this.videoPath,
  });

  String? videoName;
  bool? videoPath;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        videoName: json["video_name"],
        videoPath: json["video_path"],
      );

  Map<String, dynamic> toJson() => {
        "video_name": videoName,
        "video_path": videoPath,
      };
}
