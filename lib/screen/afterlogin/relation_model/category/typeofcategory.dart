// To parse this JSON data, do
//
//     final typeofcategory = typeofcategoryFromJson(jsonString);

import 'dart:convert';
import 'package:vande_mission/screen/afterlogin/relation_model/category/category.dart';

Typeofcategory typeofcategoryFromJson(String? str) => Typeofcategory.fromJson(json.decode(str!));

String typeofcategoryToJson(Typeofcategory data) => json.encode(data.toJson());

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
