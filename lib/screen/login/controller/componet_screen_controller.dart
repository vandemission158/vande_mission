import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:vande_mission/helper/app_color.dart';

import '../../../helper/image_constant.dart';

class ComponetsScreenController extends GetxController{

  String dropdownValue = 'One';
  String text = "#tranding";
  
  final List<Map<String, dynamic>> texts = [
    {
      "text": "O1. This text contains a url: https://flutter.dev",
      "types": null
    },
    {
      "text": "O2. This text contains an email address: example@app.com",
      "types": [LinkType.email]
    },
    {
      "text": "O3. This text contains an #hashtag",
      "types": [LinkType.hashTag]
    },
    {
      "text": "O4. This text contains a @user tag",
      "types": [LinkType.userTag]
    },
    {
      "text":
          "O5. My website url: https://hello.com/GOOGLE search using: www.google.com, social media is facebook.com, additional link http://example.com/method?param=fullstackoverflow.dev, hashtag #trending & mention @dev",
      "types": [
        LinkType.email,
        LinkType.url,
        LinkType.hashTag,
        LinkType.userTag
      ]
    },
  ];

 List<Color> bottomColor = [
  green.withOpacity(0.1),
  blue.withOpacity(0.1),
  yellowSociety.withOpacity(0.1),
  pinkVillage.withOpacity(0.1),
  green.withOpacity(0.1)
 ];

 List<String> textBottom = [
  "create_poll",
  "gallery",
  "add_video",
  "place",
  "add_some"
 ];

 List<String> icons = [
     iGroup,
     photos,
     videos,
     iconPlace,
     iGroup
 ];

}