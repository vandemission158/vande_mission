import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final searchTextcontroller = TextEditingController().obs;
  late final FocusNode focusNode;
  var searchList = [
    "All",
    "User",
    "Business",
    "Events",
    "Property",
  ].obs;
}
