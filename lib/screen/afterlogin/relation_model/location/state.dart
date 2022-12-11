// To parse this JSON data, do
//
//     final state = stateFromJson(jsonString);

import 'dart:convert';

State stateFromJson(String? str) => State.fromJson(json.decode(str!));

String stateToJson(State data) => json.encode(data.toJson());

class State {
  State({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory State.fromJson(Map<String, dynamic> json) => State(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
