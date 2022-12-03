import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:vande_mission/helper/app_color.dart';

import '../../../helper/image_constant.dart';

class ComponetsScreenController extends GetxController {
  String dropdownValue = 'One';
  String text = "#tranding";
  var showPoll = false.obs;
  var showGallery = false.obs;
  var showAddVideo = false.obs;
  var showPlace = false.obs;
  var showAddSome = false.obs;
  var showText = false.obs;
  var showRecord = false.obs;

  var currentRangeValues = 1.0.obs;
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

  ///this list is bottom sheet color
  var bottomColor = [
    green,
    blue,
    yellowSociety,
    pinkVillage,
  ].obs;

  ///this list is bottomsheet text
  var textBottom = [
    {'id': 1, 'name': "create_poll", 'image': iGroup},
    {'id': 2, 'name': "gallery", 'image': photos},
    {'id': 3, 'name': "add_video", 'image': videos},
    {'id': 4, 'name': "place", 'image': iconPlace},
    {'id': 5, 'name': "add_some", 'image': iGroup},
  ].obs;

  ///this list is bottom sheet icon

  ///this image define is gridview
  var pollImages = [pollFirstImage, pollSecondImage];

  int addIndex = 0;
}
