// To parse this JSON data, do
//
//     final modelCatList = modelCatListFromJson(jsonString);

import 'dart:convert';

List<ModelCartList> modelCartListFromJson(String str) => List<ModelCartList>.from(json.decode(str).map((x) => ModelCartList.fromJson(x)));

String modelCartListToJson(List<ModelCartList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelCartList {
  ModelCartList({
    this.id,
    this.name,
    this.categoryImage,
    this.isActive,
  });

  int id;
  String name;
  String categoryImage;
  int isActive;

  factory ModelCartList.fromJson(Map<String, dynamic> json) => ModelCartList(
    id: json["id"],
    name: json["name"],
    categoryImage: json["category_image"],
    isActive: json["is_active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category_image": categoryImage,
    "is_active": isActive,
  };
}
