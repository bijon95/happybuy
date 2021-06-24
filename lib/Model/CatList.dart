// To parse this JSON data, do
//
//     final modelCatList = modelCatListFromJson(jsonString);

import 'dart:convert';

List<ModelCatList> modelCatListFromJson(String str) => List<ModelCatList>.from(json.decode(str).map((x) => ModelCatList.fromJson(x)));

String modelCatListToJson(List<ModelCatList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelCatList {
  ModelCatList({
    this.id,
    this.name,
    this.isActive,
  });

  int id;
  String name;
  int isActive;

  factory ModelCatList.fromJson(Map<String, dynamic> json) => ModelCatList(
    id: json["id"],
    name: json["name"],
    isActive: json["is_active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_active": isActive,
  };
}
