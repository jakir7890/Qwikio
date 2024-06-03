// To parse this JSON data, do
//
//     final divisionModel = divisionModelFromMap(jsonString);

import 'dart:convert';

List<DivisionModel> divisionModelFromMap(dynamic str) => List<DivisionModel>.from((str as List<dynamic>).map((x) => DivisionModel.fromMap(x)));

String divisionModelToMap(List<DivisionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DivisionModel {
  final int? id;
  final String? name;
  final String? bnName;
  final String? url;

  DivisionModel({
    this.id,
    this.name,
    this.bnName,
    this.url,
  });

  factory DivisionModel.fromMap(Map<String, dynamic> json) => DivisionModel(
    id: json["id"],
    name: json["name"],
    bnName: json["bn_name"],
    url: json["url"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "bn_name": bnName,
    "url": url,
  };
}
