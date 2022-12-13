// To parse this JSON data, do
//
//     final image = imageFromJson(jsonString);

import 'dart:convert';

Image imageFromJson(String? str) => Image.fromJson(json.decode(str!));

String imageToJson(Image data) => json.encode(data.toJson());

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
