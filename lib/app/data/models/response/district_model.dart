// To parse this JSON data, do
//
//     final districtModel = districtModelFromMap(jsonString);

import 'dart:convert';

List<DistrictModel> districtModelFromMap(dynamic str) => List<DistrictModel>.from((str as List<dynamic>).map((x) => DistrictModel.fromMap(x)));

String districtModelToMap(List<DistrictModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DistrictModel {
  final int? id;
  final String? divisionId;
  final String? name;
  final String? bnName;
  final String? lat;
  final String? lon;
  final String? url;

  DistrictModel({
    this.id,
    this.divisionId,
    this.name,
    this.bnName,
    this.lat,
    this.lon,
    this.url,
  });

  factory DistrictModel.fromMap(Map<String, dynamic> json) => DistrictModel(
    id: json["id"],
    divisionId: json["division_id"],
    name: json["name"],
    bnName: json["bn_name"],
    lat: json["lat"],
    lon: json["lon"],
    url: json["url"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "division_id": divisionId,
    "name": name,
    "bn_name": bnName,
    "lat": lat,
    "lon": lon,
    "url": url,
  };
}
